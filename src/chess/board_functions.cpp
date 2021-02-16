#include "game/chessboard.hpp"

void Board::MakeMove(CMove mv)
{
}

void Board::UnmakeMove()
{
}

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
}

void Board::SetCastlingRights_(Color color, int direction, int value)
{
}

void Board::SetTurn_(Color turn)
{
}

bool Board::is_check()
{
  return state_.is_check;
}

void Board::LoadPosition(PieceType piece_list[64], Color turn_to_move, int ep_square,
                         board::castle::Rights castling_rights, int fullmove, int halfmove)
{
  // Clearing and resetting state
  // Need to hard reset completely.
  _maps_generated = false;
  state_stack_.Clear();
  status_ = board::Status::NotCalculated;
  state_ = board::State();
  SetEpSquare_(-1);
  SetCastlingRights_(White, board::castle::long_, 1);
  SetCastlingRights_(White, board::castle::short_, 1);
  SetCastlingRights_(Black, board::castle::long_, 1);
  SetCastlingRights_(Black, board::castle::short_, 1);

  for (PieceType i = 0; i < 12; i++)
  {
    bitboard_[i] = 0;
  }

  // Make sure the hash is properly initialized
  // Otherwise there could be bugs
  hash_ = 0; // start at zero?

  for (Square i = 0; i < 64; i++)
  {
    PieceType piece = piece_list[i];

    if (piece != piece::EmptyPiece)
    {
      AddPiece_(piece, u64FromSquare(i));
    }
  }

  SetEpSquare_(ep_square);
  // SetCastlingRights_(castling_rights)

  GeneratePseudoLegal_();
}

PieceType Board::piece_at(u64 location) const {
  for (PieceType i = 0; i < 12; i++) {
    if (location & bitboard_[i])
      return i;
  }
  assert(false);
}

void Board::Reset()
{
  LoadPosition("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
}

Board::Board()
{
  Reset();
}
