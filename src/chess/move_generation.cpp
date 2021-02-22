#include "game/chessboard.hpp"

MoveList<256> Board::legal_moves() const
{
  // if it's check, then divert over
  if (is_check())
    return produce_uncheck_moves_();

  MoveList<256> mv_list = Board::capture_moves();
  u64List src_bitscan;
  u64List dest_bitscan;

  const Color curr_turn = turn();
  const u64 occ = occupancy();
  const Color enemy_color = oppositeColor(curr_turn);

  // find quiet moves

  bitscanAll(occupancy(curr_turn), src_bitscan);
  for (int i = 0; i < src_bitscan.len(); i++)
  {
    const Square src = u64ToSquare(src_bitscan[i]);
    PieceType piece_ = piece_at_(src_bitscan[i]);

    u64 dests = 0;

    if (piece::is_pawn(piece_))
    {
      u64 one_up = move_maps::pawnMoves(src, curr_turn);
      if (!(occ & one_up))
      {
        dests |= one_up;
        u64 two_up = move_maps::pawnDoubleMoves(src, curr_turn);
        if (!(occ & two_up))
          dests |= two_up;
      }
    }
    else if (piece::is_king(piece_))
    {
      dests |= move_maps::kingMoves(src);
    }
    else if (piece::is_knight(piece_))
    {
      dests |= move_maps::knightMoves(src);
    }
    else
    {
      if (piece::is_bishop(piece_) || piece::is_queen(piece_))
      {
        dests |= move_maps::bishopMoves(src, occ);
      }
      if (piece::is_rook(piece_) || piece::is_queen(piece_))
      {
        dests |= move_maps::rookMoves(src, occ);
      }
    }
    dests &= ~occ; // capture move generated elsewhere

    bitscanAll(dests, dest_bitscan);
    for (int k = 0; k < dest_bitscan.len(); k++)
    {
      const Square dest = u64ToSquare(dest_bitscan[k]);
      if (piece::is_pawn(piece_))
      {
        if (std::abs(squareToRow(src) - squareToRow(dest)) == 2)
        {
          // double push
          CMove mv = CMove(src, dest, move_type::DoublePawn);
          if (verify_move_safety_(mv))
            mv_list.PushBack(mv);
        }
        else if (move_maps::isPromotingRank(dest, curr_turn)) // if pawn and promotion
        {
          // pawn promotion w/ capture
          CMove mv_q = CMove(src, dest, move_type::QPromotion);
          CMove mv_r = CMove(src, dest, move_type::RPromotion);
          CMove mv_b = CMove(src, dest, move_type::BPromotion);
          CMove mv_k = CMove(src, dest, move_type::KPromotion);

          // only need to verify one for all of them to be safe
          if (verify_move_safety_(mv_q))
          {
            mv_list.PushBack(mv_q);
            mv_list.PushBack(mv_r);
            mv_list.PushBack(mv_b);
            mv_list.PushBack(mv_k);
          }
        }
        else
        {
          // regular pawn push
          CMove mv = CMove(src, dest, move_type::Default);
          if (verify_move_safety_(mv))
            mv_list.PushBack(mv);
        }
      }
      else
      {
        CMove mv = CMove(src, dest, move_type::Default);
        if (verify_move_safety_(mv))
          mv_list.PushBack(mv);
      }
    } // end for over possible destinations
  }   // end for over friendly pieces

  // castling moves
  if (state_.castling_rights.get(curr_turn, board::castle::long_))
  {
    assert(bitboard_[piece::get_king(curr_turn)] & king_starting_location[curr_turn]);

    u64 squares_between = board::castle::long_squares[curr_turn];
    u64 king_slide = board::castle::king_long_slide[curr_turn]; // slide should contain dest
    if (!(squares_between & occ) && !(is_attacked_(king_slide, enemy_color)))
    {
      mv_list.PushBack(CMove(u64ToSquare(king_starting_location[curr_turn]), u64ToSquare(board::castle::king_long_dest[curr_turn]), move_type::CastleLong));
    }
  }
  if (state_.castling_rights.get(curr_turn, board::castle::short_))
  {
    assert(bitboard_[piece::get_king(curr_turn)] & king_starting_location[curr_turn]);

    u64 squares_between = board::castle::short_squares[curr_turn];
    u64 king_slide = board::castle::king_short_slide[curr_turn]; // slide should contain dest
    if (!(squares_between & occ) && !(is_attacked_(king_slide, enemy_color)))
    {

      mv_list.PushBack(CMove(u64ToSquare(king_starting_location[curr_turn]), u64ToSquare(board::castle::king_short_dest[curr_turn]), move_type::CastleShort));
    }
  }

  return mv_list;
}

/**
 * For this one and legal moves, consider not using precalculated attack maps...
 */
MoveList<256> Board::capture_moves() const
{
  assert(!is_check()); // we shouldn't be calling this if we're in check

  MoveList<256> mv_list;
  u64List src_bitscan;
  u64List dest_bitscan;
  const Color curr_turn = turn();
  const u64 friendlies = occupancy(curr_turn);
  const u64 enemies = occupancy(oppositeColor(curr_turn));
  const u64 occ = friendlies | enemies;

  bitscanAll(occupancy(curr_turn), src_bitscan);
  for (int i = 0; i < src_bitscan.len(); i++)
  {
    const Square src = u64ToSquare(src_bitscan[i]);
    PieceType piece_ = piece_at_(src_bitscan[i]);

    u64 dests = 0;

    if (piece::is_pawn(piece_))
    {
      const Square ep_square = state_.en_passant_square;
      if (ep_square != -1 &&
          u64FromSquare(ep_square) & move_maps::pawnCaptures(src, curr_turn))
      {
        CMove mv = CMove(src, ep_square, move_type::EnPassant);
        if (verify_move_safety_(mv))
          mv_list.PushBack(mv);
      }

      dests |= move_maps::pawnCaptures(src, curr_turn) & enemies;
    }
    else if (piece::is_king(piece_))
    {
      dests |= move_maps::kingMoves(src);
    }
    else if (piece::is_knight(piece_))
    {
      dests |= move_maps::knightMoves(src);
    }
    else
    {
      if (piece::is_bishop(piece_) || piece::is_queen(piece_))
      {
        dests |= move_maps::bishopMoves(src, occ);
      }
      if (piece::is_rook(piece_) || piece::is_queen(piece_))
      {
        dests |= move_maps::rookMoves(src, occ);
      }
    }
    dests &= ~friendlies & enemies; // can't capture allies

    bitscanAll(dests, dest_bitscan);
    for (int k = 0; k < dest_bitscan.len(); k++)
    {
      const Square dest = u64ToSquare(dest_bitscan[k]);
      if (piece::is_pawn(piece_) && move_maps::isPromotingRank(dest, curr_turn)) // if pawn and promotion
      {
        // pawn promotion w/ capture
        CMove mv_q = CMove(src, dest, move_type::QPromotion);
        CMove mv_r = CMove(src, dest, move_type::RPromotion);
        CMove mv_b = CMove(src, dest, move_type::BPromotion);
        CMove mv_k = CMove(src, dest, move_type::KPromotion);

        // only need to verify one for all of them to be safe
        if (verify_move_safety_(mv_q))
        {
          mv_list.PushBack(mv_q);
          mv_list.PushBack(mv_r);
          mv_list.PushBack(mv_b);
          mv_list.PushBack(mv_k);
        }
      }
      else
      {
        CMove mv = CMove(src, dest, move_type::Default);
        if (verify_move_safety_(mv))
          mv_list.PushBack(mv);
      }
    } // end for over possible destinations
  }   // end for over friendly pieces

  // for (PieceType piece_ = curr_turn; piece_ < 12; piece_ += 2)
  // {
  //   bitscanAll(bitboard_[piece_], src_arr);
  //   for (int i = 0; i < src_arr.len(); i++)
  //   {
  //     const Square src = u64ToSquare(src_arr[i]);
  //     u64 captures = state_.attack_map_[src] & enemies & ~friendlies; // can't capture allies
  //     bitscanAll(captures, dest_arr);
  //     for (int k = 0; k < dest_arr.len(); k++)
  //     {
  //       const Square dest = u64ToSquare(dest_arr[k]);
  //       if (piece::is_pawn(piece_) && move_maps::isPromotingRank(dest, curr_turn)) // if pawn and promotion
  //       {
  //         // pawn promotion w/ capture
  //         CMove mv_q = CMove(src, dest, move_type::QPromotion);
  //         CMove mv_r = CMove(src, dest, move_type::RPromotion);
  //         CMove mv_b = CMove(src, dest, move_type::BPromotion);
  //         CMove mv_k = CMove(src, dest, move_type::KPromotion);

  //         // only need to verify one for all of them to be safe
  //         if (verify_move_safety_(mv_q))
  //         {
  //           mv_list.PushBack(mv_q);
  //           mv_list.PushBack(mv_r);
  //           mv_list.PushBack(mv_b);
  //           mv_list.PushBack(mv_k);
  //         }
  //       }
  //       else
  //       {
  //         CMove mv = CMove(src, dest, move_type::Default);
  //         if (verify_move_safety_(mv))
  //           mv_list.PushBack(mv);
  //       }
  //     } // end for over possible destinations

  //     if (piece::is_pawn(piece_))
  //     {
  //       // pawns can sometimes attack an empty square (no intersection w/ occupancy)
  //       // that's the case of en passant
  //       const Square ep_square = state_.en_passant_square;
  //       if (ep_square != -1 &&
  //           u64FromSquare(ep_square) & state_.attack_map_[src])
  //       {
  //         CMove mv = CMove(src, ep_square, move_type::EnPassant);
  //         if (verify_move_safety_(mv))
  //           mv_list.PushBack(mv);
  //       }
  //     } // end if checking for en passant
  //   }   // end for over locations of specific piece type
  // }

  return mv_list;
}

bool Board::is_checkmate() const
{
  if (!is_check())
    return false;
  MoveList<256> legals = legal_moves();
  return legals.size() == 0;
}

bool Board::is_stalemate() const
{
  assert(!is_check());

  u64List src_arr;
  u64List dest_arr;
  const Color curr_turn = turn();
  const u64 friendlies = occupancy(curr_turn);
  const u64 enemies = occupancy(oppositeColor(curr_turn));
  const u64 occ = friendlies | enemies;

  bitscanAll(occupancy(curr_turn), src_arr);
  for (int i = 0; i < src_arr.len(); i++)
  {
    const Square src = u64ToSquare(src_arr[i]);
    PieceType piece_ = piece_at_(src_arr[i]);

    u64 dests = 0;

    if (piece::is_pawn(piece_))
    {
      const Square ep_square = state_.en_passant_square;
      if (ep_square != -1 &&
          u64FromSquare(ep_square) & move_maps::pawnCaptures(src, curr_turn))
      {
        CMove mv = CMove(src, ep_square, move_type::EnPassant);
        if (verify_move_safety_(mv))
          return true;
      }
      dests |= move_maps::pawnCaptures(src, curr_turn) & enemies;
      u64 one_up = move_maps::pawnMoves(src, curr_turn);
      if (!(occ & one_up))
      {
        dests |= one_up;
        u64 two_up = move_maps::pawnDoubleMoves(src, curr_turn);
        if (!(occ & two_up))
          dests |= two_up;
      }
    }
    else if (piece::is_king(piece_))
    {
      dests |= move_maps::kingMoves(src);
    }
    else if (piece::is_knight(piece_))
    {
      dests |= move_maps::knightMoves(src);
    }
    else
    {
      if (piece::is_bishop(piece_) || piece::is_queen(piece_))
      {
        dests |= move_maps::bishopMoves(src, occ);
      }
      if (piece::is_rook(piece_) || piece::is_queen(piece_))
      {
        dests |= move_maps::rookMoves(src, occ);
      }
    }
    dests &= ~friendlies; // can't capture allies

    bitscanAll(dests, dest_arr);
    for (int k = 0; k < dest_arr.len(); k++)
    {
      const Square dest = u64ToSquare(dest_arr[k]);
      if (piece::is_pawn(piece_) && move_maps::isPromotingRank(dest, curr_turn)) // if pawn and promotion
      {
        // pawn promotion w/ capture
        CMove mv_q = CMove(src, dest, move_type::QPromotion);

        // only need to verify one for all of them to be safe
        if (verify_move_safety_(mv_q))
          return true;
      }
      else
      {
        CMove mv = CMove(src, dest, move_type::Default);
        if (verify_move_safety_(mv))
          return true;
      }
    } // end for over possible destinations
  }   // end for over friendly pieces

  // no need to check for castling because if you could castle,
  // you could move your king over and we would have caught that move.

  return true;
}
