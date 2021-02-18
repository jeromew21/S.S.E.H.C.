#include "game/chessboard.hpp"

const u64 CLASSICAL_KING_STARTING_LOCATIONS[2] = {0x10, 0x1000000000000000};
const u64 CLASSICAL_QUEENSIDE_ROOK_STARTING_LOCATIONS[2] = {0x1, 0x100000000000000};
const u64 CLASSICAL_KINGSIDE_ROOK_STARTING_LOCATIONS[2] = {0x80, 0x8000000000000000};

void Board::AddPiece_(PieceType piece, u64 location)
{
  // Square sq = u64ToSquare(location);
  // u64 p_hash = ZOBRIST_HASHES[64 * piece + sq];
  // _zobristHash ^= p_hash;
  bitboard_[piece] |= location;
}

void Board::RemovePiece_(PieceType piece, u64 location)
{
  // Square sq = u64ToSquare(location);
  // u64 p_hash = ZOBRIST_HASHES[64 * piece + sq];
  // _zobristHash ^= p_hash;
  bitboard_[piece] &= ~location;
}

void Board::SetEpSquare_(Square ep_square)
{
  state_.en_passant_square = ep_square;
  // do hashing
}

void Board::SetCastlingRights_(Color color, int direction, int value)
{
  if (state_.castling_rights.get(color, direction) == value)
    return;
  // now we are for sure toggling the value
  state_.castling_rights.Set(color, direction, value);
}

void Board::SetTurn_(Color turn)
{
  state_.turn = turn;
}

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
  state_ = board::State(); //clear entire state

  maps_generated_ = false;
  state_stack_.Clear();
  status_ = board::Status::NotCalculated;
  hash_ = 0;

  SetEpSquare_(-1);
  SetCastlingRights_(White, board::castle::long_, 1);
  SetCastlingRights_(White, board::castle::short_, 1);
  SetCastlingRights_(Black, board::castle::long_, 1);
  SetCastlingRights_(Black, board::castle::short_, 1);

  for (PieceType i = 0; i < 12; i++)
  {
    bitboard_[i] = 0;
  }

  // Set new state values
  for (Square i = 0; i < 64; i++)
  {
    PieceType piece = piece_list[i];

    if (piece != piece::EmptyPiece)
    {
      AddPiece_(piece, u64FromSquare(i));
    }
  }

  SetEpSquare_(ep_square);
  SetCastlingRights_(White, board::castle::long_, castling_rights.get(White, board::castle::long_));
  SetCastlingRights_(White, board::castle::short_, castling_rights.get(White, board::castle::short_));
  SetCastlingRights_(Black, board::castle::long_, castling_rights.get(Black, board::castle::long_));
  SetCastlingRights_(Black, board::castle::short_, castling_rights.get(Black, board::castle::short_));

  GeneratePseudoLegal_();
}

void Board::Reset()
{
  LoadPosition("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
}

Board::Board()
{
  Reset();
}
