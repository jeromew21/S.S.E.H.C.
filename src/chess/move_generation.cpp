#include "game/chessboard.hpp"

/**
 * The rationale for doing an entirely different function for check situations
 * is that there are a much more limited number of moves in such a sitaution:
 * if it's double check, then you can only move,
 * and if it's single check you can move, block, or capture.
 */
MoveList<256> Board::produce_uncheck_moves_()
{
  if (!maps_generated_)
  {
    GeneratePseudoLegal_();
  }
  assert(is_check());
  MoveList<256> mv_list;
  return mv_list;

  // // todo make this work
  // MoveVector<256> v;

  // Color color = turn();
  // Color enemyColor = flipColor(color);
  // PieceType king = W_King + turn() * 6;
  // u64 attackerPositions = _isUnderAttack(bitboard[king], enemyColor);
  // int checkCount = hadd(attackerPositions);
  // std::array<u64, 64> arr;
  // int count;
  // int pRow0 = color == White ? 7 : 0;
  // int pRow = color == White ? 6 : 1;
  // int sRow = color == White ? 1 : 6;
  // u64 myOcc = occupancy(color);
  // u64 enemyOcc = occupancy(enemyColor);
  // u64 occ = myOcc | enemyOcc;

  // if (checkCount == 1)
  // {
  //   // add captures that aren't pinned
  //   u64 targetLocations = attackerPositions; // will add to this

  //   // add blocks, including EP

  //   u64 kingBB = bitboard[king];
  //   PieceType attacker = pieceAt(attackerPositions) % 6;
  //   bool flag = true;
  //   if (attacker == W_Queen || attacker == W_Rook)
  //   {
  //     for (int d = 0; d < 4; d++)
  //     {
  //       u64 ray = _rookRay(attackerPositions, d, occ);
  //       if (ray & kingBB)
  //       {
  //         // this is the one
  //         ray = ray & ~kingBB;
  //         targetLocations |= ray;
  //         flag = false;
  //         break;
  //       }
  //     }
  //   }
  //   if (flag && (attacker == W_Queen || attacker == W_Bishop))
  //   {
  //     for (int d = 0; d < 4; d++)
  //     {
  //       u64 ray = _bishopRay(attackerPositions, d, occ);
  //       if (ray & kingBB)
  //       {
  //         // this is the one
  //         ray = ray & ~kingBB;
  //         targetLocations |= ray;
  //         break;
  //       }
  //     }
  //   }

  //   std::array<u64, 64> arr0;
  //   int count0;
  //   bitscanAll(arr0, targetLocations, count0);
  //   for (int k = 0; k < count0;
  //        k++)
  //   { // loop over each uncheck destination (capture or block)
  //     u64 target = arr0[k];
  //     int targetIndex = u64ToIndex(arr0[k]);
  //     u64 moverLocations = defendMap[targetIndex] & myOcc;
  //     bitscanAll(arr, moverLocations, count);
  //     for (int i = 0; i < count; i++)
  //     { // loop through movers
  //       if (arr[i] & kingBB)
  //         continue;
  //       int srci = u64ToIndex(arr[i]);
  //       if (!_isInLineWithKing(arr[i], color, kingBB))
  //       {
  //         // check for promotions or en passant
  //         PieceType mover = pieceAt(arr[i]);
  //         if (mover % 6 == W_Pawn)
  //         { // if pawn we need to ensure is capture
  //           if (occ & target)
  //           {
  //             // handle en passant capturing
  //             if (intToRow(targetIndex) == pRow0)
  //             {
  //               v.push_back(Move(srci, targetIndex, MoveTypeCode::BPromotion));
  //               v.push_back(Move(srci, targetIndex, MoveTypeCode::RPromotion));
  //               v.push_back(Move(srci, targetIndex, MoveTypeCode::KPromotion));
  //               v.push_back(Move(srci, targetIndex, MoveTypeCode::QPromotion));
  //             }
  //             else
  //             {
  //               v.push_back(Move(srci, targetIndex, MoveTypeCode::Default));
  //             }
  //           }
  //         }
  //         else
  //         {
  //           v.push_back(Move(srci, targetIndex, MoveTypeCode::Default));
  //         }
  //       }
  //     }

  //     // pawn pushes
  //     if (!(occ & target))
  //     {
  //       // not a capture, we can push a pawn to block
  //       std::array<int, 64> arr;
  //       int count;
  //       bitscanAllInt(arr, bitboard[W_Pawn + color * 6], count);
  //       for (int i = 0; i < count; i++)
  //       { // go thru each pawn
  //         int srci = arr[i];
  //         int src = u64FromIndex(arr[i]);
  //         if (_isInLineWithKing(src, color, kingBB))
  //           continue; // if the pawn is pinned skip

  //         // handle the rare en passant uncheck here
  //         // both must not be pinned (capturer and captured)
  //         if (boardState[EN_PASSANT_INDEX] >= 0 &&
  //             u64FromIndex(boardState[EN_PASSANT_INDEX]) & attackMap[srci])
  //         {
  //           u64 capturedPawn = PAWN_MOVE_CACHE[targetIndex][enemyColor];
  //           if (!_isInLineWithKing(src | capturedPawn, color, kingBB))
  //           {
  //             // both are not pinned
  //             if (capturedPawn & target)
  //             {
  //               v.push_back(Move(srci, boardState[EN_PASSANT_INDEX],
  //                                MoveTypeCode::EnPassant));
  //             }
  //           }
  //         }

  //         int row = intToRow(srci);
  //         u64 singleMove = PAWN_MOVE_CACHE[srci][color] & ~occ;
  //         if (singleMove)
  //         {
  //           if (row == sRow)
  //           {
  //             u64 doubleMove = PAWN_DOUBLE_CACHE[srci][color] & ~occ;
  //             if (doubleMove & target)
  //             {
  //               v.push_back(Move(srci, targetIndex, MoveTypeCode::DoublePawn));
  //             }
  //           }
  //           if (singleMove & target)
  //           {
  //             if (row == pRow)
  //             {
  //               v.push_back(Move(srci, targetIndex, MoveTypeCode::BPromotion));
  //               v.push_back(Move(srci, targetIndex, MoveTypeCode::RPromotion));
  //               v.push_back(Move(srci, targetIndex, MoveTypeCode::KPromotion));
  //               v.push_back(Move(srci, targetIndex, MoveTypeCode::QPromotion));
  //             }
  //             else
  //             {
  //               v.push_back(Move(srci, targetIndex, MoveTypeCode::Default));
  //             }
  //           }
  //         }
  //       }
  //     }
  //   }
  // }
  // // add sidesteps
  // int kingIndex = u64ToIndex(bitboard[king]);
  // u64 kingMoves = KING_MOVE_CACHE[kingIndex];
  // bitscanAll(arr, kingMoves, count);
  // for (int i = 0; i < count; i++)
  // {
  //   if (!_isUnderAttack(arr[i], enemyColor) && !(arr[i] & myOcc))
  //   {
  //     // not under attack and is free square
  //     u64 outRay;
  //     if (_isInLineWithKing(bitboard[king], color, arr[i], outRay))
  //     {
  //       // if the king is being attacked by a sliding piece
  //       continue;
  //     }
  //     v.push_back(Move(kingIndex, u64ToIndex(arr[i]), MoveTypeCode::Default));
  //   }
  // }
  // return v;
}

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

  // add castling here...

  return mv_list;
}

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
  const Color friendlies = occupancy(curr_turn);
  const Color enemies = occupancy(oppositeColor(curr_turn));

  for (PieceType piece_ = curr_turn; piece_ < 12; piece_ += 2)
  {
    bitscanAll(bitboard_[piece_], src_arr);
    for (int i = 0; i < src_arr.len(); i++)
    {
      const Square src = u64ToSquare(src_arr[i]);
      u64 captures = state_.attack_map_[src] & enemies & (~friendlies); // can't capture allies
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
      }
    }
  }

  // pawns can sometimes attack an empty square (no intersection w/ occupancy)
  // that's the case of en passant
  if (state_.en_passant_square != -1) {

  }

  return mv_list;
}
