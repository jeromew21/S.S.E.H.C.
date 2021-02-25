#include "tests/tests.hpp"
#include "game/chessboard.hpp"
#include "uci/strings.hpp"
#include "uci/interface.hpp"
#include "misc/perft.hpp"

#define RESET "\033[0m"
#define RED "\033[31m"   /* Red */
#define GREEN "\033[32m" /* Green */

const int perft_classical_nodes[6] = {1, 20, 400, 8902, 197281, 4865609};
const int perft_classical_captures[6] = {0, 0, 0, 34, 1576, 82719};
const int perft_classical_checks[6] = {0, 0, 0, 12, 469, 27351};
const int perft_classical_mates[6] = {0, 0, 0, 0, 8, 347};

const int perft_kp_nodes[6] = {0, 48, 2039, 97862, 4085603, 193690690};
const int perft_kp_captures[6] = {0, 8, 351, 17102, 757163, 35043416};
const int perft_kp_eps[6] = {0, 0, 1, 45, 1929, 73365};
const int perft_kp_castles[6] = {0, 2, 91, 3162, 128013, 4993637};
const int perft_kp_promos[6] = {0, 0, 0, 0, 15172, 8392};
const int perft_kp_checks[6] = {0, 0, 3, 993, 25523, 3309887};
const int perft_kp_mates[6] = {0, 0, 0, 1, 43, 30171};

const int perft_tricky_nodes[6] = {0, 44, 1486, 62379, 2103487, 89941194};

const int perft_test4_nodes[5] = {0, 6, 264, 9467, 422333};
const int perft_test4_mates[5] = {0, 0, 0, 22, 5};
const int perft_test4_promotions[5] = {0, 0, 48, 120, 60032};

const std::string starting_boards[3] = {"rnbqkbnr/p3pppp/8/1p6/2pP4/4P3/1P3PPP/RNBQKBNR w KQkq - 0 6",
                                        "1Q6/5p2/4q1pk/8/8/1P3PK1/8/8 w - - 0 43",
                                        "rnb1kb1r/pp1p1ppp/5n2/q2Np3/4P3/3B1N2/PPPB1PPP/R2QK2R b KQkq - 4 7"};
const std::string correct_moves[3] = {"d1f3", "b8h8", "a5d8"};

void expect(int ground_truth, int value, std::string const &message, int &total_cases, int &passes)
{
  total_cases++;

  std::cout << "[" << message << "] ";

  if (ground_truth != value)
  {
    std::cout << RED;
    std::cout << "Expected " << ground_truth << ", got " << value << std::endl;
  }
  else
  {
    passes++;
    std::cout << GREEN;
    std::cout << "OK" << std::endl;
  }
  std::cout << RESET;
}

void expect(std::string ground_truth, std::string value, std::string const &message, int &total_cases, int &passes)
{
  total_cases++;

  std::cout << "[" << message << "] ";

  if (ground_truth != value)
  {
    std::cout << RED;
    std::cout << "Expected " << ground_truth << ", got " << value << std::endl;
  }
  else
  {
    passes++;
    std::cout << GREEN;
    std::cout << "OK" << std::endl;
  }
  std::cout << RESET;
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
 * tests based on loading a FEN and comparing state to precalculated values
 */
void position_mate_test(std::string const &fen, bool is_mate, int &total_cases, int &passes)
{
  Board chessboard;
  chessboard.LoadPosition(fen);
  board::Status st = chessboard.status();
  expect(is_mate, st == board::Status::BlackWin || st == board::Status::WhiteWin, "is mate?", total_cases, passes);
}

/**
 * tests based on loading a FEN and comparing state to precalculated values
 */
void position_stalemate_test(std::string const &fen, bool is_mate, int &total_cases, int &passes)
{
  Board chessboard;
  chessboard.LoadPosition(fen);
  board::Status st = chessboard.status();
  expect(is_mate, st == board::Status::Stalemate, "is stalemate?", total_cases, passes);
}

void SEE_test(std::string const &fen, Square src, Square dest, int score, int &total_cases, int &passes)
{
  Board chessboard;
  chessboard.LoadPosition(fen);
  expect(score, chessboard.see(chessboard.move_from_src_dest(src, dest)), "see", total_cases, passes);
}

void perft4_test(int depth, int &total_cases, int &passes)
{
  Board chessboard;
  perft::Counter counter;
  chessboard.LoadPosition("r3k2r/Pppp1ppp/1b3nbN/nP6/BBP1P3/q4N2/Pp1P2PP/R2Q1RK1 w kq - 0 1");
  perft::perft(chessboard, depth, counter);
  expect(perft_test4_nodes[depth], counter.nodes, "node count", total_cases, passes);
  expect(perft_test4_mates[depth], counter.checkmates, "mate count", total_cases, passes);
  expect(perft_test4_promotions[depth], counter.promotions, "promo count", total_cases, passes);
}

void perft_tricky_test(int depth, int &total_cases, int &passes)
{
  Board chessboard;
  perft::Counter counter;
  chessboard.LoadPosition("rnbq1k1r/pp1Pbppp/2p5/8/2B5/8/PPP1NnPP/RNBQK2R w KQ - 1 8");
  perft::perft(chessboard, depth, counter);
  expect(perft_tricky_nodes[depth], counter.nodes, "node count", total_cases, passes);
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
  expect(perft_kp_mates[depth], counter.checkmates, "mate count", total_cases, passes);
  expect(perft_kp_promos[depth], counter.promotions, "promo count", total_cases, passes);
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
  expect(perft_classical_mates[depth], counter.checkmates, "mate count", total_cases, passes);
}

void move_find_test(int depth, int &total_cases, int &passes)
{
  Board chessboard;
  std::atomic<bool> stop(false);
  Score sc = 0;
  auto start = std::chrono::high_resolution_clock::now();
  int nodes_visited = 1;
  for (int i = 0; i < 3; i++)
  {
    chessboard.LoadPosition(starting_boards[i]);
    std::cout << "trying position: " << starting_boards[i] << '\n';
    std::priority_queue<MoveScore> pq;
    auto legals = chessboard.legal_moves();
    for (int j = 0; j < legals.size(); j++)
      pq.push(MoveScore(legals[j], 0));
    CMove found = ai::rootMove(chessboard, depth, stop, sc, legals[0], pq, nodes_visited, start);
    expect(correct_moves[i], moveToUCIAlgebraic(found), "find best move", total_cases, passes);
  }
}

void threefold_test() {
  uci::Interface interface;
  interface.RecieveUCICommand("position startpos moves b1c3 b8c6 c3b1 c6b8 b1c3 b8c6 c3b1 c6b8 b1c3 b8c6 c3b1 c6b8");
  interface.RecieveUCICommand("dump");
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

  // kiwi pete
  position_load_test("r3k2r/p1ppqpb1/bn2pnp1/3PN3/1p2P3/2N2Q1p/PPPBBPPP/R3K2R w KQkq - ", 48, false, total_cases, passes);

  // tricky
  position_load_test("rnbq1k1r/pp1Pbppp/2p5/8/2B5/8/PPP1NnPP/RNBQK2R w KQ - 1 8", 44, false, total_cases, passes);

  // en passant test
  position_load_test("rnbqkbnr/1p1ppp2/p6p/2pP2p1/4P3/P7/1PP2PPP/RNBQKBNR w KQkq c6 0 5", 38, false, total_cases, passes);

  banner("Checkmate tests");
  position_mate_test("rnbqkbnr/ppppp1pp/8/5p1Q/4P3/8/PPPP1PPP/RNB1KBNR b KQkq - 1 2", false, total_cases, passes);
  position_mate_test("rnb1kbnr/pppp1ppp/8/4p3/5PPq/8/PPPPP2P/RNBQKBNR w KQkq - 1 3", true, total_cases, passes);
  position_mate_test("kr6/ppN5/8/8/8/6P1/3K4/8 b - - 0 1", true, total_cases, passes);
  position_mate_test("r2qk2r/p1pp1Qb1/bn1Pp1p1/4N3/1p2P1n1/P1N4p/1PPBBPPP/R3K2R b KQkq - 0 3", true, total_cases, passes);
  position_mate_test("3rk1nr/p1ppqQb1/Bn2p1p1/1N1PN3/1p2P3/7p/PPPB1PPP/R3K2R b KQk - 0 3", false, total_cases, passes);
  position_mate_test("3r1knr/p1Npqpb1/Bn2p1N1/3P4/1p2P3/5Q1p/PPPB1PPP/R3K2R b KQ - 0 4", true, total_cases, passes);
  position_mate_test("r2qk2r/p1pp1Qb1/bn2p1p1/3PN3/1p2P3/2N4p/PPPBBPPP/R3K2R b KQkq - 0 2", true, total_cases, passes);

  banner("Stalemate tests");
  position_stalemate_test("rnbqkbnr/ppppp1pp/8/5p1Q/4P3/8/PPPP1PPP/RNB1KBNR b KQkq - 1 2", false, total_cases, passes);
  position_stalemate_test("rnb1kbnr/pppp1ppp/8/4p3/5PPq/8/PPPPP2P/RNBQKBNR w KQkq - 1 3", false, total_cases, passes);
  position_stalemate_test("kr6/ppN5/8/8/8/6P1/3K4/8 b - - 0 1", false, total_cases, passes);
  position_stalemate_test("r2qk2r/p1pp1Qb1/bn1Pp1p1/4N3/1p2P1n1/P1N4p/1PPBBPPP/R3K2R b KQkq - 0 3", false, total_cases, passes);
  position_stalemate_test("3rk1nr/p1ppqQb1/Bn2p1p1/1N1PN3/1p2P3/7p/PPPB1PPP/R3K2R b KQk - 0 3", false, total_cases, passes);
  position_stalemate_test("3r1knr/p1Npqpb1/Bn2p1N1/3P4/1p2P3/5Q1p/PPPB1PPP/R3K2R b KQ - 0 4", false, total_cases, passes);
  position_stalemate_test("r2qk2r/p1pp1Qb1/bn2p1p1/3PN3/1p2P3/2N4p/PPPBBPPP/R3K2R b KQkq - 0 2", false, total_cases, passes);
  position_stalemate_test("k7/8/1Q6/8/4K3/8/8/8 b - - 0 1", true, total_cases, passes);
  position_stalemate_test("k7/6p1/1Q4P1/8/4K3/8/8/8 b - - 0 1", true, total_cases, passes);
  position_stalemate_test("k4bnq/4p1pr/1Q2NpPp/5N1B/4K3/8/8/8 b - - 0 1", true, total_cases, passes);

  banner("SEE tests");
  SEE_test("1k1r4/1pp4p/p7/4p3/8/P5P1/1PP4P/2K1R3 w - - ", squareFromName("e1"), squareFromName("e5"),
           getMaterialValue(piece::white::pawn),
           total_cases, passes);

  SEE_test("1k1r3q/1ppn3p/p4b2/4p3/8/P2N2P1/1PP1R1BP/2K1Q3 w - - ", squareFromName("d3"), squareFromName("e5"),
           getMaterialValue(piece::white::pawn) - getMaterialValue(piece::white::knight),
           total_cases, passes);
  SEE_test("rnbqkbnr/ppp1pppp/8/3p4/4P3/8/PPPP1PPP/RNBQKBNR w KQkq - 0 2", squareFromName("e4"), squareFromName("d5"),
           0,
           total_cases, passes);
  SEE_test("2rk1r2/6p1/p2bBnQp/1p1Pq3/8/8/PP3PPP/2R3K1 w - - 0 25", squareFromName("c1"), squareFromName("c8"),
           getMaterialValue(piece::white::rook),
           total_cases, passes);

  for (int d = 1; d < 5; d++)
  {
    banner("PERFT 4 depth=" + std::to_string(d));
    perft4_test(d, total_cases, passes);
  }

  for (int d = 1; d < 6; d++)
  {
    banner("PERFT classical depth=" + std::to_string(d));
    perft_classical_test(d, total_cases, passes);
  }

  for (int d = 1; d < 5; d++)
  {
    banner("PERFT kiwipete depth=" + std::to_string(d));
    perft_kiwipete_test(d, total_cases, passes);
  }

  for (int d = 1; d < 5; d++)
  {
    banner("PERFT tricky depth=" + std::to_string(d));
    perft_tricky_test(d, total_cases, passes);
  }

  banner("Threefold repitition test");
  threefold_test();

  int depth = 5;
  banner("Root move depth=" + std::to_string(depth));
  move_find_test(depth, total_cases, passes);

  std::cout << passes << "/" << total_cases << " tests passed." << std::endl;
}