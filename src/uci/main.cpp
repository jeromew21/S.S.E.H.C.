#include <iostream>
#include <chrono>

#include "game/chessboard.hpp"
#include "uci/strings.hpp"

bool verbose = true;

// test move generator
void testPerft()
{
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

  Board chessboard;
  chessboard.Dump();

  dump64(move_maps::knightMoves(squareFromName("b1")));


  return 0;
}
