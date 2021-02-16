#include <iostream>
#include "game/chessboard.hpp"
#include "misc/debug.hpp"
#include "uci/strings.hpp"

void Board::Dump() {
  print_("turn");
  std::cout << (turn() == White ? "white" : "black") << std::endl;

  print_("occupancy (white)");
  dump64(occupancy(White));

  print_("occupancy (black)");
  dump64(occupancy(Black));

  print_("legal moves");
  MoveList<256> legal = legal_moves();
  for (int i = 0; i < legal.size(); i++) {
    CMove mv = legal[i];
    std::cout << moveToUCIAlgebraic(mv) << " ";
  }
  std::cout << std::endl;
}