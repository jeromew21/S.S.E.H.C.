#include "game/chessboard.hpp"

board::Status Board::status()
{
  // Retrieve cached value
  if (status_ != board::Status::NotCalculated)
    return status_;
  // Calculate and store value
  return board::Status::NotCalculated;
}

Color Board::turn() const {
  return state_.turn;
}

u64 Board::hash() const {
  return hash_;
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
