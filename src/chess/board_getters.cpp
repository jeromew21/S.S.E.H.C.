#include "game/chessboard.hpp"

board::Status Board::status()
{
  // Retrieve cached value
  if (status_ != board::Status::NotCalculated)
    return status_;

  // Calculate and store value
  if (is_check())
  {
    if (is_checkmate())
    {
      if (turn() == White)
        status_ = board::Status::BlackWin;
      else
        status_ = board::Status::WhiteWin;
    }
    else
    {
      // check, but not checkmate: must be still playing
      status_ = board::Status::Playing;
    }
  }
  else if (is_stalemate())
  {
    status_ = board::Status::Stalemate;
  }
  else
  {
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

CMove Board::move_from_src_dest(Square src, Square dest) const
{
  PieceType mover = piece_at_(src);
  assert(!piece::is_empty(mover));

  // this needs to be given more information... promotions...
  return CMove(src, dest, move_type::Default);
}

/**
 * used in uncheck and checking for castling
 * 
 * we're slowly trying to move away from using attack and defend maps
 * so this may be implemented differently soon.
 */
u64 Board::attackers_to_(u64 subjects, Color attacking_color) const
{
  assert(subjects != 0);

  u64List subj_bitscan;
  bitscanAll(subjects, subj_bitscan);
  const u64 occ = occupancy();
  const u64 rooks = bitboard_[piece::get_rook(attacking_color)] | bitboard_[piece::get_queen(attacking_color)];
  const u64 bishops = bitboard_[piece::get_bishop(attacking_color)] | bitboard_[piece::get_queen(attacking_color)];
  const u64 knights = bitboard_[piece::get_knight(attacking_color)];
  const u64 kings = bitboard_[piece::get_king(attacking_color)];
  const u64 pawns = bitboard_[piece::get_pawn(attacking_color)];

  u64 attacker_map = 0;

  for (int i = 0; i < subj_bitscan.len(); i++)
  {
    u64 subj_loc = subj_bitscan[i];
    u64 sliders = move_maps::slidingAttackers(occ | subj_loc, subj_loc, rooks, bishops);
    u64 jumpers = move_maps::jumpingAttackers(subj_loc, attacking_color, knights, kings, pawns);
    attacker_map |= sliders | jumpers;
  }
  return attacker_map;
}

bool Board::is_attacked_(u64 subjects, Color attacking_color) const
{
  assert(subjects != 0);

  u64List subj_bitscan;
  bitscanAll(subjects, subj_bitscan);
  u64 occ = occupancy();
  u64 rooks = bitboard_[piece::get_rook(attacking_color)] | bitboard_[piece::get_queen(attacking_color)];
  u64 bishops = bitboard_[piece::get_bishop(attacking_color)] | bitboard_[piece::get_queen(attacking_color)];
  u64 knights = bitboard_[piece::get_knight(attacking_color)];
  u64 kings = bitboard_[piece::get_king(attacking_color)];
  u64 pawns = bitboard_[piece::get_pawn(attacking_color)];

  for (int i = 0; i < subj_bitscan.len(); i++)
  {
    u64 subj_loc = subj_bitscan[i];
    u64 sliders = move_maps::slidingAttackers(occ | subj_loc, subj_loc, rooks, bishops);
    u64 jumpers = move_maps::jumpingAttackers(subj_loc, attacking_color, knights, kings, pawns);
    if (sliders || jumpers)
      return true;
  }
  return false;
}

PieceType Board::piece_at_(u64 location) const
{
  assert(hadd(location) == 1);
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
