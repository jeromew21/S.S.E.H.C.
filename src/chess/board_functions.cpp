#include "game/chessboard.hpp"

void Board::MakeMove(CMove mv)
{
}

void Board::UnmakeMove()
{
}

void Board::AddPiece_(PieceType piece, u64 location) {
  Square ind = u64ToSquare(location);
  // u64 hash = ZOBRIST_HASHES[64 * p + ind];
  // _zobristHash ^= hash;
  bitboard_[piece] |= location;
}

void Board::RemovePiece_(PieceType piece, u64 location) {
  
}

void Board::SetEpSquare_(Square ep_square) {

}

void Board::SetCastlingRights_(Color color, int direction, int value) {

}

void Board::SetCastlingRights_(castle::Rights rights) {
  SetCastlingRights_(White, castle::long_, rights.get(White, castle::long_));
  SetCastlingRights_(White, castle::short_, rights.get(White, castle::short_));
  SetCastlingRights_(Black, castle::long_, rights.get(Black, castle::long_));
  SetCastlingRights_(Black, castle::short_, rights.get(Black, castle::short_));
}

bool Board::is_check() {
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
  if (color == White)
  {
    return bitboard_[piece::white::king] | bitboard_[piece::white::queen] | bitboard_[piece::white::bishop] |
           bitboard_[piece::white::pawn] | bitboard_[piece::white::rook] | bitboard_[piece::white::knight];
  }
  else
  {
    return bitboard_[piece::black::king] | bitboard_[piece::black::queen] | bitboard_[piece::black::bishop] |
           bitboard_[piece::black::pawn] | bitboard_[piece::black::rook] | bitboard_[piece::black::knight];
  }
}