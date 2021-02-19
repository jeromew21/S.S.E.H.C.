#include "game/chessboard.hpp"

MoveList<256> Board::legal_moves()
{
  if (!maps_generated_)
  {
    GeneratePseudoLegal_();
  }

  // if it's check, then divert over
  if (is_check())
  {
    return produce_uncheck_moves_();
  }

  MoveList<256> mv_list = Board::capture_moves_();
  u64List src_arr;
  u64List dest_arr;
  const Color curr_turn = turn();
  const u64 occ = occupancy();
  const Color enemy_color = oppositeColor(curr_turn);
  
  // find quiet moves
  for (PieceType piece_ = curr_turn; piece_ < 12; piece_ += 2)
  {
    bitscanAll(bitboard_[piece_], src_arr);
    for (int i = 0; i < src_arr.len(); i++)
    {
      const Square src = u64ToSquare(src_arr[i]);

      u64 quiet_destinations(0); // empty squares
      if (piece::is_pawn(piece_))
      {
        // pawns cannot go where they can capture; they go elsewhere
        quiet_destinations = (~occ) & move_maps::pawnMoves(src, curr_turn);
        if (move_maps::isStartingRank(src, curr_turn))
        {
          // possible only if the single move is valid;
          if (quiet_destinations)
            quiet_destinations |= (~occ) & move_maps::pawnDoubleMoves(src, curr_turn);
        }
      }
      else
      {
        // non-pawns also go where they can attack
        quiet_destinations = (~occ) & state_.attack_map_[src];
      }

      bitscanAll(quiet_destinations, dest_arr);
      for (int k = 0; k < dest_arr.len(); k++)
      {
        const Square dest = u64ToSquare(dest_arr[k]); //all zeroes for some reason...

        if (piece::is_pawn(piece_))
        {
          if (std::abs(squareToRow(src) - squareToRow(dest)) == 2)
          {
            // pawn double push
            CMove mv = CMove(src, dest, move_type::DoublePawn);
            if (verify_move_safety_(mv))
              mv_list.PushBack(mv);
          }
          else if (move_maps::isPromotingRank(dest, curr_turn)) // if pawn and promotion
          {
            // pawn quiet promotion
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
            // pawn single push
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
      }
    }
  }

  // castling moves
  if (state_.castling_rights.get(curr_turn, board::castle::long_))
  {
    assert(bitboard_[piece::get_king(curr_turn)] & king_starting_location[curr_turn]);

    u64 squares_between = board::castle::long_squares[curr_turn];
    u64 king_slide = board::castle::king_long_slide[curr_turn]; // slide should contain dest
    if (!(squares_between & occ) && !(attackers_to_(king_slide, enemy_color)))
    {
      // in-between is empty
      if (!attackers_to_(king_slide, enemy_color))
      {
        mv_list.PushBack(CMove(u64ToSquare(king_starting_location[curr_turn]), u64ToSquare(board::castle::king_long_dest[curr_turn]), move_type::CastleLong));
      }
    }
  }
  if (state_.castling_rights.get(curr_turn, board::castle::short_))
  {
    assert(bitboard_[piece::get_king(curr_turn)] & king_starting_location[curr_turn]);

    u64 squares_between = board::castle::short_squares[curr_turn];
    u64 king_slide = board::castle::king_short_slide[curr_turn]; // slide should contain dest
    if (!(squares_between & occ) && !(attackers_to_(king_slide, enemy_color)))
    {
      // in-between is empty
      if (!attackers_to_(king_slide, enemy_color))
      {
        mv_list.PushBack(CMove(u64ToSquare(king_starting_location[curr_turn]), u64ToSquare(board::castle::king_short_dest[curr_turn]), move_type::CastleShort));
      }
    }
  }

  return mv_list;
}

/**
 * For this one and legal moves, consider not using precalculated attack maps...
 */
MoveList<256> Board::capture_moves_()
{
  if (!maps_generated_)
  {
    GeneratePseudoLegal_();
  }
  assert(!is_check()); // we shouldn't be calling this if we're in check

  MoveList<256> mv_list;
  u64List src_arr;
  u64List dest_arr;
  const Color curr_turn = turn();
  const u64 friendlies = occupancy(curr_turn);
  const u64 enemies = occupancy(oppositeColor(curr_turn));

  for (PieceType piece_ = curr_turn; piece_ < 12; piece_ += 2)
  {
    bitscanAll(bitboard_[piece_], src_arr);
    for (int i = 0; i < src_arr.len(); i++)
    {
      const Square src = u64ToSquare(src_arr[i]);
      u64 captures = state_.attack_map_[src] & enemies & ~friendlies; // can't capture allies
      bitscanAll(captures, dest_arr);
      for (int k = 0; k < dest_arr.len(); k++)
      {
        const Square dest = u64ToSquare(dest_arr[k]);
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
      
      if (piece::is_pawn(piece_))
      {
        // pawns can sometimes attack an empty square (no intersection w/ occupancy)
        // that's the case of en passant
        const Square ep_square = state_.en_passant_square;
        if (ep_square != -1 &&
            u64FromSquare(ep_square) & state_.attack_map_[src])
        {
          CMove mv = CMove(src, ep_square, move_type::EnPassant);
          if (verify_move_safety_(mv))
            mv_list.PushBack(mv);
        }
      } // end if checking for en passant
    } // end for over locations of specific piece type
  }

  return mv_list;
}
