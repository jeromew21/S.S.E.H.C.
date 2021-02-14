#include "game/chessboard.hpp"

void Board::MakeMove(CMove mv)
{
}

void Board::UnmakeMove()
{
}

void Board::SetEpSquare_(Square ep_square) {

}

bool Board::is_check() {
  return false;
}

GameStatus Board::status()
{
  //Retrieve cached value
  if (status_ != GameStatus::NotCalculated)
    return status_;
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