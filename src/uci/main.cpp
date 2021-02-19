#include <iostream>
#include <chrono>

#include "game/chessboard.hpp"
#include "uci/strings.hpp"
#include "uci/interface.hpp"
#include "tests/tests.hpp"

const int random_seed = 39132644;

bool verbose = false;

void verbose_info(const std::string &text)
{
  if (verbose)
    std::cout << "info string " << text << std::endl;
}

void init()
{
  seedRand(random_seed);
  init_bits();
  move_maps::init();
}

/**
 * The main executable
 * 
 * --test
 * runs tests and exits the program
 * 
 * --verbose
 * prints verbose output to command line
 * 
 * --version
 * prints version and exits
 */
int main(int argc, char* argv[])
{
  // parse args
  for (int i = 1; i < argc; i++) {
    std::string arg = std::string(argv[i]);
    if (arg == "--verbose") {
      verbose = true;
    } else if (arg == "--version") {
      std::cout << "0.00" << std::endl;
      exit(0);
    }
  }

  verbose_info("initializing engine");
  init();

  for (int i = 1; i < argc; i++) {
    std::string arg = std::string(argv[i]);
    if (arg == "--test") {
      run_tests();
      exit(0);
    }
  }

  Board bd;
  bd.LoadPosition("r3k2r/Pppp1ppp/1b3nbN/nP6/BBP1P3/q4N2/Pp1P2PP/R2Q1RK1 w kq - 0 1");
  bd.Dump();
  auto ml = bd.legal_moves();
  for (int i = 0; i < ml.size(); i++) {
    CMove mv = ml[i];
    std::cout << moveToUCIAlgebraic(mv) << "\n";
    std::cout << bd.is_checking_move(mv);
    bd.MakeMove(mv);
    bd.Dump();
    break;
    bd.UnmakeMove();
  }

  uci::listen();

  return 0;
}
