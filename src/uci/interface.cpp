#include "uci/interface.hpp"

void uci::sendToUciClient(const std::string &cmd) {
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
  if (search_thread.joinable())
  {
    not_thinking = true;
    search_thread.join();
  }
  // now stop the timer task
  stop_timer = true;
  if (timer_thread.joinable())
  {
    timer_thread.join();
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
  if (search_thread.joinable())
  {
    StopThinking();
  }
  not_thinking = false;
  stop_timer = false;

  // launch the search thread
  search_thread = std::thread(&Interface::Think, this);

  // launch the timer thread.
  if (!inf)
  {
    timer_thread = std::thread(&Interface::DelayStop, this, msecs);
  }
}

void uci::Interface::RecieveCommand(std::string cmd)
{
  std::vector<std::string> tokens = tokenize(cmd);
  if (tokens.size() < 1)
  {
    return;
  }
  if (tokens[0] == "uci")
  {
    uci::sendToUciClient("id name ssehc ");
    uci::sendToUciClient("id author Jerome Wei Nick Buoncristiani");
    uci::sendToUciClient("option name Foo type check default false");
    uci::sendToUciClient("uciok");
  }
  else if (tokens[0] == "debug")
  {
    if (tokens[1] == "on")
    {
      debug_ = true;
    }
    else if (tokens[1] == "off")
    {
      debug_ = false;
    }
  }
  else if (tokens[0] == "isready")
  {
    uci::sendToUciClient("readyok");
  }
  else if (tokens[0] == "setoption")
  {
  }
  else if (tokens[0] == "register")
  {
  }
  else if (tokens[0] == "ucinewgame")
  {
  }
  else if (tokens[0] == "position")
  {
    // int j = 2;
    // if (tokens[1] == "startpos") {
    //   board.reset();
    // } else {
    //   if (tokens[1] == "fen") {
    //     std::string fenstring = "";
    //     for (int k = 2; k < 8; k++) {
    //       fenstring += tokens[k] + " ";
    //     }
    //     board.loadPosition(fenstring);
    //     j = 8;
    //   }
    // }
    // if ((int)tokens.size() > j) {
    //   if (tokens[j] == "moves") {
    //     // play moves
    //     for (int k = j + 1; k < (int)tokens.size(); k++) {
    //       auto mvtxt = tokens[k];
    //       Move mv = board.moveFromAlgebraic(mvtxt);
    //       board.makeMove(mv);
    //     }
    //   }
    // }
  }
  else if (tokens[0] == "go")
  {
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
    StopThinking();
  }
  else if (tokens[0] == "ponderhit")
  {
  }
  else if (tokens[0] == "quit")
  {
    exit(0);
  }
}

void uci::listen()
{
  uci::Interface interface;
  for (std::string command; std::getline(std::cin, command);)
  {
    std::vector<std::string> tokens = tokenize(command);
    interface.RecieveCommand(command);
  }
}