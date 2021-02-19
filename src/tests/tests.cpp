#include "tests/tests.hpp"
#include "misc/debug.hpp"
#include "misc/perft.hpp"

const int perft_classical_nodes[6] = {1, 20, 400, 8902, 197281, 4865609};
const int perft_classical_captures[6] = {0, 0, 0, 34, 1576, 82719};
const int perft_classical_checks[6] = {0, 0, 0, 12, 469, 27351};

const int perft_kp_nodes[6] = {0, 48, 2039, 97862, 4085603, 193690690};
const int perft_kp_captures[6] = {0, 8, 351, 17102, 757163, 35043416};
const int perft_kp_eps[6] = {0, 0, 1, 45, 1929, 73365};
const int perft_kp_castles[6] = {0, 2, 91, 3162, 128013, 4993637};
const int perft_kp_promos[6] = {0, 0, 0, 0, 15172, 8392};
const int perft_kp_checks[6] = {0, 0, 3, 993, 25523, 3309887};

void expect(int ground_truth, int value, std::string const &message, int &total_cases, int &passes)
{
  total_cases++;
  std::cout << "[" << message << "] ";
  if (ground_truth != value)
  {
    std::cout << "Expected " << ground_truth << ", got " << value << std::endl;
  }
  else
  {
    passes++;
    std::cout << "OK" << std::endl;
  }
}

/**
 * tests based on loading a FEN and comparing state to precalculated values
 */
void position_load_test(std::string const &fen, int legal_count, bool is_check, int &total_cases, int &passes)
{
  Board chessboard;
  chessboard.LoadPosition(fen);
  expect(is_check, chessboard.is_check(), "is check?", total_cases, passes);
  expect(legal_count, chessboard.legal_moves().size(), "count legal", total_cases, passes);
}

/**
 * tests move by expanding entire tree
 * 
 * KIWIPETE position
 */
void perft_kiwipete_test(int depth, int &total_cases, int &passes)
{
  Board chessboard;
  perft::Counter counter;
  chessboard.LoadPosition("r3k2r/p1ppqpb1/bn2pnp1/3PN3/1p2P3/2N2Q1p/PPPBBPPP/R3K2R w KQkq - ");
  perft::perft(chessboard, depth, counter);
  expect(perft_kp_nodes[depth], counter.nodes, "node count", total_cases, passes);
  expect(perft_kp_captures[depth], counter.captures, "capture count", total_cases, passes);
  expect(perft_kp_checks[depth], counter.checks, "check count", total_cases, passes);
  expect(perft_kp_eps[depth], counter.ep, "en passant count", total_cases, passes);
  expect(perft_kp_castles[depth], counter.castles, "castle count", total_cases, passes);
}

/**
 * tests move generator expanding entire tree
 * 
 * classical starting position
 */
void perft_classical_test(int depth, int &total_cases, int &passes)
{
  Board chessboard;
  perft::Counter counter;
  perft::perft(chessboard, depth, counter);
  expect(perft_classical_nodes[depth], counter.nodes, "node count", total_cases, passes);
  expect(perft_classical_captures[depth], counter.captures, "capture count", total_cases, passes);
  expect(perft_classical_checks[depth], counter.checks, "check count", total_cases, passes);
}

void banner(std::string const &message)
{
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
  position_load_test("rnbqkbnr/pppp1ppp/8/4p3/8/5N2/PPPPPPPP/RNBQKB1R w KQkq - 0 2", 22, false, total_cases, passes);
  position_load_test("rnbqkbnr/pppp1ppp/8/4p3/3P4/8/PPP1PPPP/RNBQKBNR w KQkq - 0 2", 29, false, total_cases, passes);

  position_load_test("rnbqkbnr/ppppppp1/8/7p/P7/8/1PPPPPPP/RNBQKBNR w KQkq - 0 2", 21, false, total_cases, passes);
  position_load_test("rnbqkbnr/ppp1pppp/8/3p4/8/5N2/PPPPPPPP/RNBQKB1R w KQkq - 0 2", 22, false, total_cases, passes);
  position_load_test("rnbqkbnr/pppppp1p/6p1/8/8/1P6/P1PPPPPP/RNBQKBNR w KQkq - 0 2", 21, false, total_cases, passes);
  position_load_test("rnbqkbnr/pp1ppppp/8/2p5/6P1/8/PPPPPP1P/RNBQKBNR w KQkq - 0 2", 21, false, total_cases, passes);

  position_load_test("r3k2r/p1ppqpb1/bn2pnp1/3PN3/1p2P3/2N2Q1p/PPPBBPPP/R3K2R w KQkq - ", 48, false, total_cases, passes);

  for (int d = 1; d < 5; d++)
  {
    banner("PERFT classical depth=" + std::to_string(d));
    perft_classical_test(d, total_cases, passes);
  }

  for (int d = 1; d < 4; d++)
  {
    banner("PERFT kiwipete depth=" + std::to_string(d));
    perft_kiwipete_test(d, total_cases, passes);
  }

  std::cout << passes << "/" << total_cases << " tests passed." << std::endl;
}