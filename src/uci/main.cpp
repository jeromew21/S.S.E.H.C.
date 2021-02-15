#include <iostream>
#include <chrono>

#include "game/chessboard.hpp"
#include "misc/bits.hpp"
#include "misc/definitions.hpp"

// test move generator
void testPerft()
{
}

void init() {
  init_bits();
  seedRand(6969);
}

int main()
{
  init();

  Board board;
  
  u64Stack<64> out_arr;

  bitscanAll(board.occupancy(), out_arr);

  return 0;
}
