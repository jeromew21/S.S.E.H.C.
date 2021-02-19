#include <iostream>
#include <chrono>

#include "game/chessboard.hpp"
#include "uci/strings.hpp"
#include "misc/perft.hpp"
#include "tests/tests.hpp"

bool verbose = false;

void verbose_info(const std::string &text)
{
  if (verbose)
    std::cout << "info string " << text << std::endl;
}

void init()
{
  seedRand(6969);
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

  
  // testPerft();
  Board chessboard;

  // auto lm = chessboard.legal_moves();
  // for (int i = 0; i < lm.size(); i++) {
  //   chessboard.MakeMove(lm[i]);
  //   auto lm2 = chessboard.legal_moves();
  //   for (int k = 0; k < lm2.size(); k++) {
  //     chessboard.MakeMove(lm2[i]);
  //     chessboard.Dump();
  //     chessboard.UnmakeMove();
  //   }
  //   chessboard.UnmakeMove();
  // }

  return 0;
}
