#include <iostream>
#include <chrono>

#include "game/chessboard.hpp"
#include "misc/bits.hpp"
#include "misc/definitions.hpp"

// test move generator
void testPerft()
{
}

int main()
{

  auto start = std::chrono::high_resolution_clock::now();

  for (u64 u = 0; u < 0xFFFFFFFFFFFFFFFF; u += 1239871238971)
    hadd(u);

  auto stop = std::chrono::high_resolution_clock::now();
  auto duration = std::chrono::duration_cast<std::chrono::nanoseconds>(stop - start); //or milliseconds
  unsigned long duration_count = duration.count();
}

//Board board;
//board.Dump();
//
//return 0;