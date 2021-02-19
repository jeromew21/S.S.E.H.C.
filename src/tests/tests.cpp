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

/**
 * tests based on loading a FEN and comparing state to precalculated values
 */
void position_load_test(std::string const &fen, int legal_count, bool is_check, int &total_cases, int &passes) {
  Board chessboard;
  chessboard.LoadPosition(fen);
  expect(is_check, chessboard.is_check(), "is check?", total_cases, passes);
  expect(legal_count, chessboard.legal_moves().size(), "count legal", total_cases, passes);
}

void perft_classical_test(int depth, int &total_cases, int &passes)
{
  // test move generator
  Board chessboard;
  perft::Counter counter;
  perft::perft(chessboard, depth, counter);
  expect(perft_classical_nodes[depth], counter.nodes, "node count", total_cases, passes);
  expect(perft_classical_captures[depth], counter.captures, "capture count", total_cases, passes);
  expect(perft_classical_captures[depth], counter.checks, "check count", total_cases, passes);
}

void banner(std::string const &message) {
  std::cout << "-----" << message << "-----" << std::endl;
}

void run_tests()
{
  int total_cases(0), passes(0);
  std::cout << "Running test suite."
            << "\n";

  banner("Load FEN Basic Test");
  position_load_test("r1b4k/pp4p1/3n1nqp/3B4/2P2p2/2Q4P/PB2PP2/R5RK b - - 2 30", 41, false, total_cases, passes);
  position_load_test("rn1qk2r/pp3ppp/4pn2/3p4/8/1P1P2P1/PBPbQP1P/2KR1BNR w kq - 0 11", 4, true, total_cases, passes);
  position_load_test("r1b1kbnr/pppp1Npp/8/8/4q3/5n2/PPPPBP1P/RNBQKR2 w Qkq - 2 8", 0, true, total_cases, passes);

  for (int d = 1; d < 6; d++)
  {
    banner("PERFT classical depth="+std::to_string(d));
    perft_classical_test(d, total_cases, passes);
  }

  std::cout << passes << "/" << total_cases << " tests passed." << std::endl;
}