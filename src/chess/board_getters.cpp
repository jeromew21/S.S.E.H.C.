#include "game/chessboard.hpp"

board::Status Board::status()
{
  // Retrieve cached value
  if (status_ != board::Status::NotCalculated)
    return status_;

  // Calculate and store value
  if (is_check())
  {
    MoveList<256> legals = legal_moves();
    if (legals.size() == 0)
    {
      if (turn() == White)
      {
        status_ = board::Status::BlackWin;
      }
      else
      {
        status_ = board::Status::WhiteWin;
      }
    } else {
      status_ = board::Status::Playing;
    }
  }
  else
  {
    // check for stalemate will slow down a little
    // will need a dedicated function
    // status_ = board::Status::Stalemate;
    status_ = board::Status::Playing;
  }

  return status_;
}

Color Board::turn() const
{
  return state_.turn;
}

bool Board::is_check() const
{
  return state_.is_check;
}

u64 Board::hash() const
{
  return state_.hash;
}

u64 Board::occupancy() const
{
  assert(!(occupancy(White) & occupancy(Black)));

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

CMove Board::move_from_src_dest(Square src, Square dest)
{
  PieceType mover = piece_at_(src);
  assert(!piece::is_empty(mover));

  // this needs to be given more information... promotions...
  return CMove(src, dest, move_type::Default);
}

u64 Board::attackers_to_(u64 subjects)
{
  assert(maps_generated_);
  assert(subjects != 0);

  u64 attacker_map = 0;
  u64List arr;
  bitscanAll(subjects, arr);
  for (int i = 0; i < arr.len(); i++)
  {
    attacker_map |= state_.defend_map_[u64ToSquare(arr[i])];
  }
  return attacker_map;
}

u64 Board::attackers_to_(u64 subjects, Color attacking_color)
{
  return attackers_to_(subjects) & occupancy(attacking_color);
}

PieceType Board::piece_at_(u64 location) const
{
  for (PieceType i = 0; i < 12; i++)
  {
    if (location & bitboard_[i])
      return i;
  }
  return piece::EmptyPiece;
}

PieceType Board::piece_at_(Square location) const
{
  return piece_at_(u64FromSquare(location));
}
