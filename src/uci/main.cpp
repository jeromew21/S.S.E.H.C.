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
  init_bits();
  seedRand(6969);
  u64 R = randomBits();
  dump64(R);
  std::array<u64, 64> out_arr;
  int out_size;

  auto start = std::chrono::high_resolution_clock::now();

  for (int i = 0; i < 10000000; i++)
  {
    bitscanAll_old(R, out_arr, out_size);
  }

  auto stop = std::chrono::high_resolution_clock::now();
  auto duration = std::chrono::duration_cast<std::chrono::nanoseconds>(stop - start); //or milliseconds
  unsigned long duration_count = duration.count();
  std::cout << duration_count << std::endl;

  std::array<u64, 64> out_arr2;
  int out_size2;
  start = std::chrono::high_resolution_clock::now();
  for (int i = 0; i < 10000000; i++)
  {
    bitscanAll(R, out_arr2, out_size2);
  }
  stop = std::chrono::high_resolution_clock::now();
  duration = std::chrono::duration_cast<std::chrono::nanoseconds>(stop - start); //or milliseconds
  duration_count = duration.count();
  std::cout << duration_count << std::endl;
}

//Board board;
//board.Dump();
//
//return 0;