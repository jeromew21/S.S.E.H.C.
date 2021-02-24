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
  const int depth_limit = SCORE_MAX;

  int total_nodes_visited = 1;
  auto start = std::chrono::high_resolution_clock::now();

  int depth = 0;      // current search depth
  Score best_score(SCORE_MIN);
  best_move_ = board_.legal_moves()[0];
  std::priority_queue<MoveScore> prev_scores;

  for (depth = 0; depth < depth_limit; depth++)
  {
    Score score;
    // send principal variation move from previous
    CMove move_at_depth = ai::rootMove(board_, depth, not_thinking, score, best_move_, prev_scores, total_nodes_visited, start);
    if (not_thinking)
    {
      if (depth <= 1)
      {
        best_move_ = move_at_depth;
        best_score = score;
      }
      else
      {
        // either the score is better or worse.
        if (score > best_score)
        { // if we get a better score in stopped search
          best_move_ = move_at_depth;
          best_score = score;
        }
        else
        {
          // score was not beaten in interrupted iteration
          // add more time?
        }
      }
      break;
    }
    if (ai::isCheckmateScore(score))
    {
      best_move_ = move_at_depth;
      break; // break immediatly if mate found
    }
    else
    {                             // it finishes at that layer
      best_move_ = move_at_depth; // PV-move
      best_score = score;
    }
  }
  uci::sendToUciClient("bestmove " + moveToUCIAlgebraic(best_move_));

  // make sure to reset thread state
  stop_timer = true; // finishes timer thread if still running
  not_thinking = true;
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

void uci::Interface::PositionCommand(std::vector<std::string> &tokens)
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

void uci::Interface::GoCommand(std::vector<std::string> &tokens)
{
  // this method asks the engine to calculate and
  // return a best move
  // need to eventually implement "searchmoves": limiting search to choice of moves

  Color color = board_.turn();
  bool inf = false;        // true if we search infinitely
  int my_time = 0;         // amount of time to search
  bool time_alloc = false; // do we want to set aside a fraction of the remaining time?
  int increment = 0;

  for (unsigned k = 1; k < tokens.size(); k++)
  {
    auto token = tokens[k];
    if (token == "wtime")
    {
      k++;
      if (color == White)
      {
        my_time = std::stoi(tokens[k]); // time left on clock
        time_alloc = true;
      }
    }
    else if (token == "btime")
    {
      k++;
      if (color == Black)
      {
        my_time = std::stoi(tokens[k]); // time left on clock
        time_alloc = true;
      }
    }
    if (token == "winc")
    {
      k++;
      if (color == White)
      {
        increment = std::stoi(tokens[k]); // time left on clock
        time_alloc = true;
      }
    }
    else if (token == "binc")
    {
      k++;
      if (color == Black)
      {
        increment = std::stoi(tokens[k]); // time left on clock
        time_alloc = true;
      }
    }
    else if (token == "movetime")
    {
      k++;
      my_time = std::stoi(tokens[k]);
      time_alloc = false;
      break;
    }
    else if (token == "infinite")
    {
      my_time = 10000000; // close enough to infinite, not like anyone's checking lol
      inf = true;
      break;
    }
    else if (token == "searchmoves")
    {
    }
    else if (token == "ponder")
    {
    }
    else if (token == "depth")
    {
    }
    else if (token == "nodes")
    {
    }
    else if (token == "mate")
    {
    }
    else if (token == "movestogo")
    {
    }
  }

  int msecs = my_time;
  if (time_alloc)
  {
    msecs += increment;
    msecs /= 30; // allocate 30 seconds of time for now... TODO: make this smarter
  }
  StartThinking(inf, msecs);
}

void uci::Interface::UCICommand()
{
  // send engine info
  uci::sendToUciClient("id name ssehc " + std::to_string(version_major) + "." + std::to_string(version_minor));
  uci::sendToUciClient("id author Jerome Wei Nick Buoncristiani");

  // send list of options that client can change
  uci::sendToUciClient("option name threads type check default false"); // list options...

  // finally, send ok
  uci::sendToUciClient("uciok");
}

void uci::Interface::DebugCommand(std::vector<std::string> &tokens)
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

void uci::Interface::QuitCommand()
{
  // may need to call destructors
  StopThinking();
  verbose_info("exiting");
  exit(0);
}

void uci::Interface::RecieveUCICommand(std::string cmd)
{
  std::vector<std::string> tokens = tokenize(cmd);

  if (tokens.size() < 1)
  {
    // We didn't get any tokens to parse.
    verbose_info("empty command");
    return;
  }

  if (tokens[0] == "uci")
  {
    UCICommand();
  }
  else if (tokens[0] == "debug")
  {
    DebugCommand(tokens);
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
    ai::reset();
  }
  else if (tokens[0] == "position")
  {
    PositionCommand(tokens);
  }
  else if (tokens[0] == "go")
  {
    GoCommand(tokens);
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
    QuitCommand();
  }
}

void uci::listen()
{
  uci::Interface interface;
  for (std::string command; std::getline(std::cin, command);)
  {
    interface.RecieveUCICommand(command);
  }
}
