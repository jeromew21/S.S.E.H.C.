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

Board::Board()
{
  Reset();
}
