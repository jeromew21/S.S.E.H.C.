#include <chrono>

#include "tests/benchmarks.hpp"
#include "misc/debug.hpp"
#include "misc/perft.hpp"

void run_benchmarks() {
  Board chessboard;
  
  auto start = std::chrono::high_resolution_clock::now();
  perft::perft_only_nodes(chessboard, 5);
  auto stop = std::chrono::high_resolution_clock::now(); 
  auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(stop - start); //or milliseconds
  unsigned long duration_count = duration.count();
  std::cout << "Perft 5 time: " << duration_count << "ms" << std::endl;
  double nodes = 4865609;
  double seconds = ((double) duration.count()) / 1000L;
  std::cout << "NPS: " << (nodes / seconds) << std::endl;
}