#include "game/chessboard.hpp"

/**
 * Assuming a move is psuedo-legal for a particular side (it could be played disregarding checks)
 * we want to know if it is safe, that is, not putting yourself in check.
 */
bool Board::verify_move_safety_(CMove mv)
{
  assert(maps_generated_);
  assert(!is_check()); // we shouldn't be calling this one if we're in check

  const Color curr_turn = turn();
  const Color enemy_turn = oppositeColor(curr_turn);
  const u64 src = mv.src();
  const u64 dest = mv.dest();

  // castling is verified by default in Blobfish but we might change it here
  if (mv.is_castle())
    return true;

  // the fabulous en passant pin
  if (mv.type_code() == move_type::EnPassant)
  {
    const u64 captured_pawn = move_maps::pawnMoves(u64ToSquare(dest), enemy_turn);
    const u64 enemy_queen = piece::get_queen(enemy_turn);
    const u64 occ = occupancy() & (~(src | captured_pawn)) | dest;
    const u64 enemy_rooks = bitboard_[piece::get_rook(enemy_turn)] | enemy_queen;
    const u64 enemy_bishops = bitboard_[piece::get_bishop(enemy_turn)] | enemy_queen;
    return !move_maps::isAttackedSliding(occ, bitboard_[piece::get_king(curr_turn)], enemy_rooks, enemy_bishops);
  }

  // we have a normal move and now need to check for pins or moving into an attack.
  PieceType mover = piece_at_(src);
  assert(colorOf(mover) == curr_turn);

  // If the piece is a king, we simply want to make sure we're not moving onto a controlled square.
  // we can't move king into a controlled square
  if (piece::is_king(mover))
  {
    if (state_.defend_map_[u64ToSquare(dest)] & occupancy(enemy_turn))
      return true;
    else
      return false;
  }

  // Otherwise, we need to make sure the piece isn't pinned.
  // We create a dummy occupancy mask and then see if any lanes or diagonals are opened up to the king.
  const u64 occ = occupancy() & (~src) & dest;
  const u64 enemy_rooks = occ & (bitboard_[piece::get_rook(enemy_turn)] | bitboard_[piece::get_queen(enemy_turn)]);
  const u64 enemy_bishops = occ & (bitboard_[piece::get_bishop(enemy_turn)] | bitboard_[piece::get_queen(enemy_turn)]);
  const u64 king = bitboard_[piece::get_king(curr_turn)];

  return !move_maps::isAttackedSliding(occ, king, enemy_rooks, enemy_bishops);
}

/**
 * Assuming a move is legal for a particular side,
 * we want to know if it puts the opponent in check.
 */
bool Board::is_checking_move(CMove mv)
{
  const Color curr_turn = turn();
  const Color enemy_turn = oppositeColor(curr_turn);
  const u64 src = mv.src();
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
    u64 occ = occupancy();
    occ &= (~king_starting_location[curr_turn]) | dest; // "move" the king
    occ &= (~rook_src) | rook_dest;                     // "move" the rook
    const u64 rook_attacks = move_maps::rookMoves(u64ToSquare(rook_dest), occ);
    return rook_attacks & enemy_king ? true : false;
  }

  // en passant discovered check
  if (mv.type_code() == move_type::EnPassant)
  {
    const Square dest_square = u64ToSquare(dest);
    const u64 captured_pawn = move_maps::pawnMoves(dest_square, enemy_turn);
    const u64 occ = occupancy() & (~(src | captured_pawn)) | dest;
    const u64 friendly_rooks = occ & (bitboard_[piece::get_rook(curr_turn)] | bitboard_[piece::get_queen(curr_turn)]);
    const u64 friendly_bishops = occ & (bitboard_[piece::get_bishop(curr_turn)] | bitboard_[piece::get_queen(curr_turn)]);

    if (move_maps::isAttackedSliding(occ, enemy_king, friendly_rooks, friendly_bishops))
      return true;

    // otherwise check if the pawn attacks the king normally
    return move_maps::pawnCaptures(dest_square, curr_turn) & enemy_king ? true : false;
  }

  PieceType mover = piece_at_(src);
  assert(colorOf(mover) == curr_turn);

  // create a dummy occupancy map
  const u64 occ = occupancy() & (~src) & dest;

  // Let's see if moving the piece away leaves the king in check.
  const u64 friendly_rooks = occ & (bitboard_[piece::get_rook(curr_turn)] | bitboard_[piece::get_queen(curr_turn)]);
  const u64 friendly_bishops = occ & (bitboard_[piece::get_bishop(curr_turn)] | bitboard_[piece::get_queen(curr_turn)]);
  if (move_maps::isAttackedSliding(occ, enemy_king, friendly_rooks, friendly_bishops))
  {
    // discovered check.
    return true;
  }

  // Now we want to see, once the piece has moved normally, whether it can attack the king
  // without updating the ENTIRE attack sets.
  if (mv.is_promotion())
    mover = mv.promoting_piece(curr_turn);

  const Square dest_square = u64ToSquare(dest);

  switch (piece::to_colorless(mover))
  {
  case piece::colorless::pawn:
    return move_maps::pawnCaptures(dest_square, curr_turn) & enemy_king ? true : false; //TODO: do we need this construct? probably not
  case piece::colorless::knight:
    return move_maps::knightMoves(dest_square) & enemy_king ? true : false;
  case piece::colorless::bishop:
    return move_maps::bishopMoves(dest_square, occ) & enemy_king ? true : false;
  case piece::colorless::rook:
    return move_maps::rookMoves(dest_square, occ) & enemy_king ? true : false;
  case piece::colorless::queen:
    return (move_maps::bishopMoves(dest_square, occ) & enemy_king || move_maps::rookMoves(dest_square, occ) & enemy_king) ? true : false;
  default:
    return false;
  }
}
