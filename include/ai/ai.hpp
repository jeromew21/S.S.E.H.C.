#ifndef AI_HPP
#define AI_HPP

#include <limits>
#include <chrono>
#include <atomic>

#include "misc/definitions.hpp"
#include "datastructures/search.hpp"
#include "game/chessboard.hpp"
#include "game/cmove.hpp"
#include "datastructures/move_list.hpp"

namespace ai
{
  int materialEvaluation(Board &board);
  int evaluation(Board &board);  // absolute
  int flippedEval(Board &board); // depends on turn

  void sendPV(Board &board, int depth, CMove pv_move, int node_count, Score score,
              std::chrono::_V2::system_clock::time_point start);

  CMove rootMove(Board &board, int depth, std::atomic<bool> &stop, Score &out_score,
                 CMove prevPv, int &count,
                 std::chrono::_V2::system_clock::time_point start,
                 std::vector<MoveScore> &prevScores);

  Score quiescence(Board &board, int depth, int ply_count, Score alpha, Score beta,
                   std::atomic<bool> &stop, int &count, int kickoff);

  Score alphaBetaSearch(Board &board, int depth, int ply_count, Score alpha, Score beta,
                        std::atomic<bool> &stop, int &count, NodeType my_node_type,
                        bool is_save);

  Score zeroWindowSearch(Board &board, int depth, int ply_count, Score beta,
                         std::atomic<bool> &stop, int &count, NodeType my_node_type);

  MoveList<256> generateMovesOrdered(Board &board, CMove hash_move, int ply_count,
                                       int &num_positive_moves);

  bool isCheckmateScore(Score sc);
  void init();
  void reset();
} // namespace AI

#endif