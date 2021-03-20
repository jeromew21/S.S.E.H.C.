#ifndef AI_HPP
#define AI_HPP

#include <atomic>
#include <chrono>
#include <limits>
#include <string>

#include <functional>
#include <numeric>
#include <queue>
#include <vector>

#include "datastructures/move_list.hpp"
#include "datastructures/search.hpp"
#include "game/chessboard.hpp"
#include "game/cmove.hpp"
#include "misc/definitions.hpp"
#include "tables.hpp"
#include "uci/interface.hpp"
#include "uci/strings.hpp"

namespace ai {
enum SettingType { boolean, number };

struct Setting {
  std::string name;
  SettingType type;
  bool bool_value;
  int int_value;
  int int_min;
  int int_max;

  Setting(std::string name_, SettingType type_, bool initial_value);
  Setting(std::string name_, SettingType type_, int initial_value, int int_min_, int int_max_);
};

struct EngineSettings {
  std::vector<Setting> settings_list;
};

EngineSettings &getEngineSettings();
void createEngineSetting(const std::string &setting_name, int value, int int_min, int int_max);
void createEngineSetting(const std::string &setting_name, bool value);

void setEngineSetting(const std::string &setting_name, bool value);
void setEngineSetting(const std::string &setting_name, int value);

Setting getEngineSetting(const std::string &setting_name);

int evaluation(Board &board);  // absolute
int evaluation(Board &board, bool print_vec);  // absolute
int flippedEval(Board &board); // depends on turn

void sendPV(Board &board, int depth, Move_ pv_move, int total_node_count,
            Score score,
            std::chrono::time_point<std::chrono::system_clock> start);

Move_ rootMove(Board &board, int depth, std::atomic<bool> &stop,
               Score &out_score, std::priority_queue<MoveScore> &prevScores,
               int &total_nodes_visited,
               std::chrono::time_point<std::chrono::system_clock> start);

Score quiescence(Board &board, int depth, int ply_count, Score alpha,
                 Score beta, std::atomic<bool> &stop, int &count, int kickoff);

Score alphaBetaSearch(Board &board, int depth, int ply_count, Score alpha,
                      Score beta, std::atomic<bool> &stop, int &count,
                      NodeType my_node_type, bool is_save);

Score zeroWindowSearch(Board &board, int depth, int ply_count, Score beta,
                       std::atomic<bool> &stop, int &count,
                       NodeType my_node_type);

std::vector<Move_> generateMovesOrdered(Board &board, Move_ refMove,
                                        int ply_count, int &num_positive_moves);

bool isCheckmateScore(Score sc);
void init();
void reset();

} // namespace ai

#endif