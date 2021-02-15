#include <iostream>
#include <chrono>

#include "game/chessboard.hpp"
#include "misc/bits.hpp"
#include "uci/strings.hpp"

// test move generator
void testPerft()
{
}

void init() {
  seedRand(6969);
  init_bits();
  move_cache::init();
}

int main()
{
  init();

  Board board;
  
  u64Stack<64> out_arr;

  bitscanAll(board.occupancy(), out_arr);

  // dump64(move_cache::knightMoves(squareFromName("e4")));

  return 0;
}
