#include "tests/tests.hpp"
#include "misc/debug.hpp"
#include "misc/perft.hpp"

const int perft_classical_nodes[6] = {1, 20, 400, 8902, 197281, 4865609};
const int perft_classical_captures[6] = {0, 0, 0, 34, 1576, 82719};

void expect(int ground_truth, int value, std::string const &message, int &total_cases, int &passes) {
  total_cases++;
  std::cout << "[" << message << "] ";
  if (ground_truth != value) {
    std::cout << "Expected " << ground_truth << ", got " << value << std::endl;
  } else {
    passes++;
    std::cout << "OK" << std::endl;
  }
}

void perft_classical_test(int depth, int &total_cases, int &passes)
{
  // test move generator
  Board chessboard;
  perft::Counter counter;
  perft::perft(chessboard, depth, counter);
  expect(perft_classical_nodes[depth], counter.nodes, "node count", total_cases, passes);
  expect(perft_classical_captures[depth], counter.captures, "capture count", total_cases, passes);
}

void banner(std::string const &message) {
  std::cout << "-----" << message << "-----" << std::endl;
}

void run_tests()
{
  int total_cases(0), passes(0);
  std::cout << "Running test suite."
            << "\n";

  for (int d = 1; d < 6; d++)
  {
    banner("PERFT classical depth="+std::to_string(d));
    perft_classical_test(d, total_cases, passes);
  }

  std::cout << passes << "/" << total_cases << " tests passed." << std::endl;
}