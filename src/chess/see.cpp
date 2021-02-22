#include "game/chessboard.hpp"

PieceType Board::least_valuable_piece_(u64 mask, Color color, u64 &out_position) const
{
  assert(out_position == 0);
  for (PieceType piece_ = color; piece_ < 12; piece_ += 2)
  {
    u64 piece_mask = bitboard_[piece_] & mask;
    if (piece_mask)
    {
      out_position = u64FromSquare(bitscanForward(piece_mask)); // pop out current member of piece set
      return piece_;
    }
  }
  out_position = 0;
  return piece::EmptyPiece;
}

int Board::see(CMove mv) const
{
  u64 src = mv.src();
  u64 dest = mv.dest();
  PieceType attacker = piece_at(src);
  PieceType target_piece = piece_at(dest);

  assert(!piece::is_empty(target_piece));

  Color color = oppositeColor(colorOf(attacker));
  u64 used_attackers = src;
  u64 occ = occupancy() & ~src; //"move" from src

  int scores[32];
  int depth = 0;
  scores[0] = getMaterialValue(target_piece); // first player is up by capturing

  PieceType piece_ = attacker; // piece at dest

  u64 knights = bitboard_[piece::white::knight] | bitboard_[piece::black::knight];
  u64 white_pawns = bitboard_[piece::white::pawn];
  u64 black_pawns = bitboard_[piece::black::pawn];
  u64 rooks = bitboard_[piece::white::rook] | bitboard_[piece::black::rook] | bitboard_[piece::white::queen] | bitboard_[piece::black::queen];
  u64 bishops = bitboard_[piece::white::bishop] | bitboard_[piece::black::bishop] | bitboard_[piece::white::queen] | bitboard_[piece::black::queen];

  u64 attack_set = 0;
  attack_set |= move_maps::jumpingAttackers(dest, White, knights, 0, black_pawns) | move_maps::jumpingAttackers(dest, Black, knights, 0, white_pawns);
  attack_set |= move_maps::slidingAttackers(occ, dest, rooks, bishops);

  do
  {
    depth++;
    scores[depth] = getMaterialValue(piece_) - scores[depth - 1]; // capture (speculative)

    // Remove used attackers from pool
    knights &= ~used_attackers;
    white_pawns &= ~used_attackers;
    black_pawns &= ~used_attackers;
    rooks &= ~used_attackers;
    bishops &= ~used_attackers;

    if (max(-scores[depth - 1], scores[depth]) < 0)
      break;

    // add attackers to attack set after move
    attack_set |= move_maps::jumpingAttackers(dest, White, knights, 0, black_pawns) | move_maps::jumpingAttackers(dest, Black, knights, 0, white_pawns);
    attack_set |= move_maps::slidingAttackers(occ, dest, rooks, bishops);
    attack_set = attack_set & ~used_attackers; // remove attacker from attack set

    u64 att_pos = 0;                                            // this will be filled with the location of the LVP for the current side
    piece_ = least_valuable_piece_(attack_set, color, att_pos); // set piece and attacker position

    used_attackers |= att_pos;        // add attacker to used set
    occ &= ~att_pos;                  // remove attacking piece from board mask
    color = oppositeColor(color);     // switch turn
  } while (!piece::is_empty(piece_)); // once LVP returns empty, we stop

  // minimax it up
  while (--depth)
  {
    scores[depth - 1] = -max(-scores[depth - 1], scores[depth]);
  }

  return scores[0];
}
