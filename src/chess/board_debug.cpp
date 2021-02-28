#include <iostream>
#include "game/chessboard.hpp"
#include "misc/debug.hpp"
#include "uci/strings.hpp"

void Board::Dump() const {
  std::cout << "\n\n";
  print_("Board");
  std::cout << "turn: " << (turn() == White ? "white" : "black") << std::endl;
  
  std::cout << "history: (" << state_stack_.size() << ") \n";
  for (int i = 1; i < state_stack_.size(); i++) {
    //std::cout << moveToUCIAlgebraic(state_stack_.peek_at(i).last_move) << " ";
    std::cout << "<move> ";
  }
  if (state_stack_.size() > 0)
    std::cout << moveToUCIAlgebraic(state_.last_move);
  std::cout << "\n";
  
  std::cout << "is check: " << is_check() << "\n";
  std::cout << "can castle queenside: " << state_.castling_rights.get(turn(), board::castle::long_) << "\n";
  std::cout << "can castle kingside: " << state_.castling_rights.get(turn(), board::castle::short_) << "\n";

  std::cout << "en passant square: " << (state_.en_passant_square == -1 ? "none" : squareName(state_.en_passant_square)) << "\n";

  std::cout << "is repetition: " << state_.has_repeated << "\n";

  std::cout << "hash: \n";
  dump64(state_.hash);

 
  for (int i = 7; i >= 0; i--)
  {
    for (int k = 0; k < 8; k++)
    {
      std::cout << pieceToStringFen(piece_at(u64FromPair(i, k)));
    }
    std::cout << "\n";
  }
  
  // std::cout << "white occ\n";
  // dump64(occupancy(White));

  // std::cout << "black occ \n";
  // dump64(occupancy(Black));

  std::cout << "legal moves: ";
  MoveList<256> legal = legal_moves();
  for (int i = 0; i < legal.size(); i++) {
    Move_ mv = legal[i];
    std::cout << moveToUCIAlgebraic(mv) << " ";
  }
  std::cout << std::endl;
}
