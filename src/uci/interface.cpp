#include "uci/interface.hpp"
#include "misc/version.hpp"
#include "ai/ai.hpp"
#include "misc/debug.hpp"

void uci::sendToUciClient(const std::string &cmd)
{
  std::cout << cmd << std::endl;
}

uci::Interface::Interface()
{
  not_thinking = true;
  stop_timer = false;
}

uci::Interface::~Interface() { StopThinking(); }

void uci::Interface::Think()
{

  // auto start = std::chrono::high_resolution_clock::now();

  // int depth = 0;
  // int nodeCount = 1;
  // int depthLimit = SCORE_MAX;
  // Score bestScore(SCORE_MIN);
  // bestMove = Move::NullMove();
  // std::vector<MoveScore> prevScores;

  // for (depth = 0; depth < depthLimit; depth++) {
  //   Score score;
  //   // send principal variation move from previous
  //   Move calcMove = AI::rootMove(board, depth, _notThinking, score, bestMove,
  //                                nodeCount, start, prevScores);
  //   if (_notThinking) {
  //     debugLog("search interrupted");
  //     if (depth <= 1) {
  //       bestMove = calcMove;
  //       bestScore = score;
  //     } else {
  //       // either the score is better or worse.
  //       if (score > bestScore) { // if we get a better score in stopped search
  //         bestMove = calcMove;
  //         bestScore = score;
  //       } else {
  //         // score was not beaten in interrupted iteration
  //         // add more time?
  //       }
  //     }
  //     break;
  //   }
  //   if (AI::isCheckmateScore(score)) {
  //     bestMove = calcMove;
  //     break;
  //   } else {               // it finishes at that layer
  //     bestMove = calcMove; // PV-move
  //     bestScore = score;
  //   }
  // }
  // uci::sendToUciClient("bestmove " + bestMove.moveToUCIAlgebraic());
  // _stopKiller = true;
  // _notThinking = true;
}

void uci::Interface::StopThinking()
{
  if (search_thread_.joinable())
  {
    not_thinking = true; // move outside if?
    search_thread_.join();
  }
  // now stop the timer task
  stop_timer = true;
  if (timer_thread_.joinable())
  {
    timer_thread_.join();
  }
}

void uci::Interface::DelayStop(int msecs)
{
  auto start = std::chrono::high_resolution_clock::now();
  int i = 0;
  int granularity = 10; // checks every 1/100 of a second
  while (true)
  {
    if (i % granularity == 0)
    {
      auto stop = std::chrono::high_resolution_clock::now();
      auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(
          stop - start); // or milliseconds
      int time = duration.count();
      if (time >= msecs)
      {
        break;
      }
    }
    if (stop_timer)
    {
      return;
    }
    i++;
  }
  not_thinking = true; // stop the other thread
}

void uci::Interface::StartThinking(bool inf, int msecs)
{
  if (search_thread_.joinable())
  {
    StopThinking();
  }
  not_thinking = false;
  stop_timer = false;

  // launch the search thread
  search_thread_ = std::thread(&Interface::Think, this);

  // launch the stop timer thread
  if (!inf)
  {
    timer_thread_ = std::thread(&Interface::DelayStop, this, msecs);
  }
}

void uci::Interface::RecieveCommand(std::string cmd)
{
  std::vector<std::string> tokens = tokenize(cmd);

  if (tokens.size() < 1)
  {
    verbose_info("empty command");
    return;
  }

  if (tokens[0] == "uci")
  {
    // send engine info
    uci::sendToUciClient("id name ssehc " + std::to_string(version_major) + "." + std::to_string(version_minor));
    uci::sendToUciClient("id author Jerome Wei Nick Buoncristiani");

    // send list of options that client can change
    uci::sendToUciClient("option name threads type check default false"); // list options...

    // finally, send ok
    uci::sendToUciClient("uciok");
  }
  else if (tokens[0] == "debug")
  {
    if (tokens.size() < 2)
    {
      assert(false);
      verbose_info("malformed command");
    }

    if (tokens[1] == "on")
    {
      uci::set_debug(true);
    }
    else if (tokens[1] == "off")
    {
      uci::set_debug(false);
    }
  }
  else if (tokens[0] == "isready")
  {
    // should send ok as long as the listener thread (this one) is running
    uci::sendToUciClient("readyok");
  }
  else if (tokens[0] == "setoption")
  {
    // setoption name [value ]
    // ai::set_option();
  }
  else if (tokens[0] == "ucinewgame")
  {
    // the next search is from a new game
    // clear hash tables, etc
    // ai::reset();
  }
  else if (tokens[0] == "position")
  {
    // either "position startpos", or "position fen",
    // and then "moves xxxx xxxx xxxx"
    unsigned j = 2; // where move list starts

    if (tokens[1] == "startpos")
    {
      verbose_info("setting board to starting position");
      board_.Reset();
    }
    else
    {
      if (tokens[1] == "fen")
      {
        if (tokens.size() < 8)
        {
          // malformed command
          assert(false);
          verbose_info("malformed FEN");
          return;
        }

        std::string fen_string = "";
        for (int k = 2; k < 8; k++)
        {
          fen_string += tokens[k] + " ";
        }
        board_.LoadPosition(fen_string);
        j = 8;
      }
    }

    // begin parsing moves
    if (tokens.size() > j)
    {
      if (tokens[j] == "moves")
      {
        // play moves
        for (unsigned k = j + 1; k < tokens.size(); k++)
        {
          const std::string move_text = tokens[k];

          if (move_text.size() < 4 || move_text.size() > 5)
          {
            verbose_info("move malformed");
            return;
          }

          const Square src = squareFromName(move_text.substr(0, 2));
          const Square dest = squareFromName(move_text.substr(2, 4));

          PieceType promotion = piece::EmptyPiece;
          if (move_text.length() == 5)
          {
            const std::string ch = move_text.substr(4, 5);
            if (ch == "q")
              promotion = piece::colorless::queen;
            else if (ch == "r")
              promotion = piece::colorless::rook;
            else if (ch == "b")
              promotion = piece::colorless::bishop;
            else if (ch == "k")
              promotion = piece::colorless::knight;
          }

          const CMove mv = board_.move_from_src_dest(src, dest, promotion);
          // return if move isn't found
          if (mv.is_null())
          {
            verbose_info("move not legal or malformed");
            return;
          }
          board_.MakeMove(mv);
        }
      }
    }
  }
  else if (tokens[0] == "go")
  {
    // this method asks the engine to calculate and
    // return a best move

    // Color color = board.turn();
    // bool inf = false;
    // int myTime = 0;
    // bool divFlag = true;
    // for (int k = 1; k < (int)tokens.size(); k++) {
    //   auto token = tokens[k];
    //   if (token == "wtime") {
    //     k++;
    //     if (color == White && myTime == 0) {
    //       myTime = std::stoi(tokens[k]);
    //     }
    //   } else if (token == "btime" && myTime == 0) {
    //     k++;
    //     if (color == Black) {
    //       myTime = std::stoi(tokens[k]);
    //     }
    //   } else if (token == "movetime") {
    //     k++;
    //     myTime = std::stoi(tokens[k]);
    //     divFlag = false;
    //   } else if (token == "infinite") {
    //     myTime = 10000000; // close enough
    //     inf = true;
    //   }
    // }
    // int t = myTime;
    // if (divFlag) {
    //   t = ((double)myTime / 30.0);
    // }
    // startThinking(inf, t);
  }
  else if (tokens[0] == "stop")
  {
    // Stop the calculation and return a best move
    StopThinking();
  }
  else if (tokens[0] == "ponderhit")
  {
    // the user has played the expected move. This will be sent if the engine was told to ponder on the same move
    // the user has played. The engine should continue searching but switch from pondering to normal search.
  }
  else if (tokens[0] == "quit")
  {
    // may need to call destructors
    verbose_info("exiting");
    exit(0);
  }
}

void uci::listen()
{
  uci::Interface interface;
  for (std::string command; std::getline(std::cin, command);)
  {
    interface.RecieveCommand(command);
  }
}
