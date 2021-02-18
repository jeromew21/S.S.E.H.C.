#include <iostream>
#include "game/chessboard.hpp"
#include "misc/debug.hpp"
#include "uci/strings.hpp"

void Board::Dump() {
  std::cout << "\n\n";
  print_("Board");
  std::cout << "turn: " << (turn() == White ? "white" : "black") << std::endl;
  
  std::cout << "history: (" << state_stack_.size() << ") \n";
  for (int i = 1; i < state_stack_.size(); i++) {
    std::cout << moveToUCIAlgebraic(state_stack_.peek_at(i).last_move) << " ";
  }
  std::cout << moveToUCIAlgebraic(state_.last_move);
  std::cout << "\n";
  
  for (int i = 7; i >= 0; i--)
  {
    for (int k = 0; k < 8; k++)
    {
      std::cout << pieceToStringFen(piece_at_(u64FromPair(i, k)));
    }
    std::cout << "\n";
  }
  
  std::cout << "white occ\n";
  dump64(occupancy(White));

  std::cout << "black occ \n";
  dump64(occupancy(Black));

  std::cout << "legal moves: ";
  MoveList<256> legal = legal_moves();
  for (int i = 0; i < legal.size(); i++) {
    CMove mv = legal[i];
    std::cout << moveToUCIAlgebraic(mv) << " ";
  }
  std::cout << std::endl;
}
