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

  for (u64 u = 0; u < 10; u += 1) {
    std::cout << hadd(u) <<std::endl;
    std::cout << hadd2(u) <<std::endl << std::endl;
  }

  auto stop = std::chrono::high_resolution_clock::now();
  auto duration = std::chrono::duration_cast<std::chrono::nanoseconds>(stop - start); //or milliseconds
  unsigned long duration_count = duration.count();
  std::cout << duration_count << std::endl;

  start = std::chrono::high_resolution_clock::now();

  for (u64 u = 1000000; u < 2000000; u += 1)

  stop = std::chrono::high_resolution_clock::now();
  duration = std::chrono::duration_cast<std::chrono::nanoseconds>(stop - start); //or milliseconds
  duration_count = duration.count();
  std::cout << duration_count << std::endl;
}

//Board board;
//board.Dump();
//
//return 0;