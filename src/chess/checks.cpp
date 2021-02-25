#include "game/chessboard.hpp"
#include "uci/strings.hpp"

/**
 * Assuming a move is psuedo-legal for a particular side (it could be played disregarding checks)
 * we want to know if it is safe, that is, not putting yourself in check.
 */
bool Board::verify_move_safety_(CMove mv) const
{
  assert(!is_check()); // we shouldn't be calling this one if we're in check
  assert(!mv.is_castle());
  
  // castling is verified by default
  // if (mv.is_castle())
  //   return true;

  const Color curr_turn = turn();
  const Color enemy_turn = oppositeColor(curr_turn);
  const u64 src = mv.src();
  const u64 dest = mv.dest();

  // the fabulous en passant pin
  if (mv.type_code() == move_type::EnPassant)
  {
    const u64 captured_pawn = move_maps::pawnMoves(u64ToSquare(dest), enemy_turn);
    const u64 enemy_queen = bitboard_[piece::get_queen(enemy_turn)];
    const u64 occ = (occupancy() & ~(src | captured_pawn)) | dest;
    const u64 enemy_rooks = bitboard_[piece::get_rook(enemy_turn)] | enemy_queen;
    const u64 enemy_bishops = bitboard_[piece::get_bishop(enemy_turn)] | enemy_queen;
    return !move_maps::slidingAttackers(occ, bitboard_[piece::get_king(curr_turn)], enemy_rooks, enemy_bishops);
  }

  // we have a normal move and now need to check for pins or moving into an attack.
  const u64 occ = (occupancy() & ~src) | dest;
  u64 king = bitboard_[piece::get_king(curr_turn)];

  // We create a dummy occupancy mask and then see if any lanes or diagonals are opened up to the king.
  const u64 enemy_rooks = ~dest & (bitboard_[piece::get_rook(enemy_turn)] | bitboard_[piece::get_queen(enemy_turn)]);
  const u64 enemy_bishops = ~dest & (bitboard_[piece::get_bishop(enemy_turn)] | bitboard_[piece::get_queen(enemy_turn)]);

  // If the moving piece is a king, we simply want to make sure we're not moving onto a controlled square.
  // we can't move king into a controlled square
  if (src & king)
  {
    return !move_maps::slidingAttackers(occ, dest, enemy_rooks, enemy_bishops) && !move_maps::jumpingAttackers(dest, enemy_turn,
                                                                                                               ~dest & bitboard_[piece::get_knight(enemy_turn)],
                                                                                                               ~dest & bitboard_[piece::get_king(enemy_turn)],
                                                                                                               ~dest & bitboard_[piece::get_pawn(enemy_turn)]);
  }

  return !move_maps::slidingAttackers(occ, king, enemy_rooks, enemy_bishops);
}

/**
 * Assuming a move is legal for a particular side,
 * we want to know if it puts the opponent in check.
 * 
 * Hotspot
 */
bool Board::is_checking_move(CMove mv) const
{
  const Color curr_turn = turn();
  const Color enemy_turn = oppositeColor(curr_turn);
  const u64 dest = mv.dest();
  const u64 enemy_king = bitboard_[piece::get_king(enemy_turn)];

  // Castling
  if (mv.is_castle())
  {
    // Create mask with castled position. Check if rook has access to enemy king.
    u64 rook_dest;
    u64 rook_src;
    if (mv.type_code() == move_type::CastleLong)
    {
      rook_dest = board::castle::rook_long_dest[curr_turn];
      rook_src = queenside_rook_starting_location[curr_turn];
    }
    else
    {
      rook_dest = board::castle::rook_short_dest[curr_turn];
      rook_src = kingside_rook_starting_location[curr_turn];
    }
    u64 occ = (occupancy() & ~king_starting_location[curr_turn] & ~rook_src) | dest | rook_dest;
    const u64 rook_attacks = move_maps::rookMoves(u64ToSquare(rook_dest), occ);
    return rook_attacks & enemy_king;
  }
  else if (mv.type_code() == move_type::EnPassant)
  {
    const Square dest_square = u64ToSquare(dest);
    const u64 captured_pawn = move_maps::pawnMoves(dest_square, enemy_turn);
    const u64 src = mv.src();
    const u64 occ = (occupancy() & ~(src | captured_pawn)) | dest;
    const u64 friendly_rooks = occ & (bitboard_[piece::get_rook(curr_turn)] | bitboard_[piece::get_queen(curr_turn)]);
    const u64 friendly_bishops = occ & (bitboard_[piece::get_bishop(curr_turn)] | bitboard_[piece::get_queen(curr_turn)]);

    // if check was fossilized
    if (move_maps::slidingAttackers(occ, enemy_king, friendly_rooks, friendly_bishops))
      return true;

    // otherwise check if the pawn attacks the king normally
    return move_maps::pawnCaptures(dest_square, curr_turn) & enemy_king;
  }

  // create a dummy occupancy map
  const u64 src = mv.src();
  const u64 occ = (occupancy() & ~src) | dest;

  // Let's see if moving the piece away leaves the king in check.
  const u64 friendly_rooks = bitboard_[piece::get_rook(curr_turn)] | bitboard_[piece::get_queen(curr_turn)];
  const u64 friendly_bishops = bitboard_[piece::get_bishop(curr_turn)] | bitboard_[piece::get_queen(curr_turn)];
  if (move_maps::slidingAttackers(occ, enemy_king, friendly_rooks, friendly_bishops))
    return true;

  // Now we want to see, once the piece has moved normally, whether it can attack the king

  assert (colorOf(piece_at(src)) == curr_turn);
  const int mover = piece::to_colorless(mv.is_promotion() ? mv.promoting_piece(curr_turn) : piece_at(src));
  const Square dest_square = u64ToSquare(dest);

  switch (mover)
  {
  case piece::colorless::pawn:
    return move_maps::pawnCaptures(dest_square, curr_turn) & enemy_king;
  case piece::colorless::knight:
    return move_maps::knightMoves(dest_square) & enemy_king;
  case piece::colorless::bishop:
    return move_maps::bishopMoves(dest_square, occ) & enemy_king;
  case piece::colorless::rook:
    return move_maps::rookMoves(dest_square, occ) & enemy_king;
  case piece::colorless::queen:
    return (move_maps::bishopMoves(dest_square, occ) & enemy_king || move_maps::rookMoves(dest_square, occ) & enemy_king);
  default:
    return false;
  }
}
