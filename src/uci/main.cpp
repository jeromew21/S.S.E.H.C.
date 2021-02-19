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
  bd.LoadPosition("r3k2r/p1ppqpb1/bn2pnp1/3PN3/1p2P3/2N2Q1p/PPPBBPPP/R3K2R w KQkq - ");
  bd.MakeMove(bd.move_from_src_dest(squareFromName("f3"), squareFromName("f6")));
  bd.MakeMove(bd.move_from_src_dest(squareFromName("e7"), squareFromName("d8")));
  bd.MakeMove(bd.move_from_src_dest(squareFromName("f6"), squareFromName("f7")));
  std::cout << (int) (bd.status() == board::Status::WhiteWin);
  bd.Dump();
  // auto ml = bd.legal_moves();
  // for (int i = 0; i < ml.size(); i++) {
  //   CMove mv = ml[i];
  //   std::cout << moveToUCIAlgebraic(mv) << "\n";
  //   bd.MakeMove(mv);
  //   bd.UnmakeMove();
  // }

  uci::listen();

  return 0;
}
