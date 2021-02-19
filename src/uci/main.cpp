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
  
  uci::listen();

  return 0;
}
