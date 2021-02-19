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

int main(int argc, char* argv[])
{
  // parse args
  for (int i = 1; i < argc; i++) {
    if (std::string(argv[i]) == "--test") {
      run_tests();
      exit(0);
    }
  }

  verbose_info("initializing engine");
  init();

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
