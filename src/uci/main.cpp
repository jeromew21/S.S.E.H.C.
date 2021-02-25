#include <iostream>
#include <chrono>

#include "game/chessboard.hpp"
#include "uci/strings.hpp"
#include "uci/interface.hpp"
#include "tests/tests.hpp"
#include "tests/benchmarks.hpp"
#include "misc/version.hpp"

const int random_seed = 39132644;

bool verbose = false;

void verbose_info(const std::string &text)
{
  if (verbose)
    std::cout << "info string " << text << std::endl;
}

void uci::set_debug(bool value) {
  verbose = value;
  verbose_info("debug mode set to " + std::to_string(value));
}

void init()
{
  seedRand(random_seed);
  init_bits();
  zobrist::init();
  move_maps::init();
}

/*! \mainpage SSEHC
 * Main page
 */
int main(int argc, char *argv[])
{
  init();
  
  // Run tests if specified
  for (int i = 1; i < argc; i++)
  {
    std::string arg = std::string(argv[i]);
    if (arg == "--test")
    {
      run_tests();
      exit(0);
    }
  }

  // Run efficiency benchmark if specified 
  for (int i = 1; i < argc; i++)
  {
    std::string arg = std::string(argv[i]);
    if (arg == "--benchmark")
    {
      run_benchmarks();
      exit(0);
    }
  }

  std::cout << "ssehc " << version_major << "." << version_minor << std::endl;

  Board cb;
  cb.piece_square_score(0, 0, 0.1);

  uci::listen();

  return 0;
}
