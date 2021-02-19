#include <chrono>

#include "tests/benchmarks.hpp"
#include "misc/debug.hpp"
#include "misc/perft.hpp"

void run_benchmarks() {
  Board chessboard;
  perft::Counter counter;
  
  auto start = std::chrono::high_resolution_clock::now();
  perft::perft(chessboard, 5, counter);
  auto stop = std::chrono::high_resolution_clock::now(); 
  auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(stop - start); //or milliseconds
  unsigned long duration_count = duration.count();
  std::cout << "Perft 5 time: " << duration_count;
}