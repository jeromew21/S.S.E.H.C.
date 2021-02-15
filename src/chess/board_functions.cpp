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

bool Board::is_check()
{
  return false;
}

GameStatus Board::status()
{
  // Retrieve cached value
  if (status_ != GameStatus::NotCalculated)
    return status_;
  // Calculate and store value
  return GameStatus::NotCalculated;
}

u64 Board::occupancy() const
{
  return occupancy(White) | occupancy(Black);
}

u64 Board::occupancy(Color color) const
{
  assert(color == White || color == Black);
  if (color == White)
  {
    return bitboard_[piece::white::king] | bitboard_[piece::white::queen] | bitboard_[piece::white::bishop] |
           bitboard_[piece::white::pawn] | bitboard_[piece::white::rook] | bitboard_[piece::white::knight];
  }
  return bitboard_[piece::black::king] | bitboard_[piece::black::queen] | bitboard_[piece::black::bishop] |
         bitboard_[piece::black::pawn] | bitboard_[piece::black::rook] | bitboard_[piece::black::knight];
}

Board::Board()
{
  Reset();
}
