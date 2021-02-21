#include "game/chessboard.hpp"

const u64 CLASSICAL_KING_STARTING_LOCATIONS[2] = {0x10, 0x1000000000000000};
const u64 CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS[2] = {0x1, 0x100000000000000};
const u64 CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS[2] = {0x80, 0x8000000000000000};

void Board::LoadPosition(PieceType piece_list[64], Color turn_to_move, int ep_square,
                         board::castle::Rights castling_rights, int fullmove, int halfmove)
{
  // Set game parameters (temporarily: no 960, move these outside later)
  kingside_rook_starting_location[White] = CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS[White];
  kingside_rook_starting_location[Black] = CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS[Black];
  queenside_rook_starting_location[White] = CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS[White];
  queenside_rook_starting_location[Black] = CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS[Black];

  king_starting_location[White] = CLASSICAL_KING_STARTING_LOCATIONS[White];
  king_starting_location[Black] = CLASSICAL_KING_STARTING_LOCATIONS[Black];

  // Clearing and resetting state
  // Need to hard reset completely.
  // Idea is to build up the board state from blank.
  state_ = board::State();

  state_stack_.Clear();
  status_ = board::Status::NotCalculated;

  for (PieceType i = 0; i < 12; i++)
  {
    bitboard_[i] = 0;
  }

  occupancy_bitboard_ = 0;

  // Set new state values
  for (Square i = 0; i < 64; i++)
  {
    PieceType piece_ = piece_list[i];

    if (piece_ != piece::EmptyPiece)
    {
      AddPiece_(piece_, u64FromSquare(i));
    }

    piece_board_[i] = piece_;
  }

  SetTurn_(turn_to_move);
  SetEpSquare_(ep_square);
  SetCastlingRights_(White, board::castle::long_, castling_rights.get(White, board::castle::long_));
  SetCastlingRights_(White, board::castle::short_, castling_rights.get(White, board::castle::short_));
  SetCastlingRights_(Black, board::castle::long_, castling_rights.get(Black, board::castle::long_));
  SetCastlingRights_(Black, board::castle::short_, castling_rights.get(Black, board::castle::short_));

  state_.halfmove_counter = halfmove;
  state_.fullmove_counter = fullmove;

  if (is_attacked_(bitboard_[piece::get_king(turn_to_move)], oppositeColor(turn_to_move))) 
    state_.is_check = true;
}

void Board::Reset()
{
  LoadPosition("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
}

Board::Board()
{
  Reset();
}
