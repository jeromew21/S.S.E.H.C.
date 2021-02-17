#include <iostream>
#include <chrono>

#include "game/chessboard.hpp"
#include "uci/strings.hpp"
#include "misc/perft.hpp"

bool verbose = true;

// test move generator
void testPerft()
{
  Board chessboard;
  perft::Counter counter;
  perft::perft(chessboard, 1, counter);
  chessboard.Dump();
}

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

int main()
{
  verbose_info("initializing engine");
  init();

  // testPerft();
  

  return 0;
}
