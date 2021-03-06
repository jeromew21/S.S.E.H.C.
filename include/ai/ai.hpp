#ifndef AI_HPP
#define AI_HPP

#include <limits>
#include <chrono>
#include <atomic>
#include <string>

#include <numeric>
#include <functional>
#include <queue>
#include <vector>

#include "misc/definitions.hpp"
#include "datastructures/search.hpp"
#include "uci/strings.hpp"
#include "game/chessboard.hpp"
#include "game/cmove.hpp"
#include "datastructures/move_list.hpp"
#include "uci/interface.hpp"
#include "tables.hpp"

namespace ai
{
  int materialEvaluation(Board &board);
  int evaluation(Board &board);  // absolute
  int flippedEval(Board &board); // depends on turn

  void sendPV(Board &board, int depth, Move_ pv_move,
              int total_node_count, Score score, std::chrono::time_point<std::chrono::system_clock> start);

  Move_ rootMove(Board &board, int depth, std::atomic<bool> &stop, Score &out_score,
                 std::priority_queue<MoveScore> &prevScores, int &total_nodes_visited, 
                 std::chrono::time_point<std::chrono::system_clock> start);

  Score quiescence(Board &board, int depth, int ply_count, Score alpha, Score beta,
                   std::atomic<bool> &stop, int &count, int kickoff);

  Score alphaBetaSearch(Board &board, int depth, int ply_count, Score alpha, Score beta,
                        std::atomic<bool> &stop, int &count, NodeType my_node_type,
                        bool is_save);

  Score zeroWindowSearch(Board &board, int depth, int ply_count, Score beta,
                         std::atomic<bool> &stop, int &count, NodeType my_node_type);

  std::vector<Move_> generateMovesOrdered(Board &board, Move_ refMove, int ply_count,
                                          int &num_positive_moves);

  bool isCheckmateScore(Score sc);
  void init();
  void reset();
} // namespace AI

#endif