#include "game/chessboard.hpp"

MoveList<256> Board::produce_uncheck_moves_()
{
  if (!maps_generated_) {
    GeneratePseudoLegal_();
  }
  assert(is_check());
  MoveList<256> mv_list;
  return mv_list;
}

MoveList<256> Board::legal_moves()
{
  if (!maps_generated_) {
    GeneratePseudoLegal_();
  }
  if (is_check())
  {
    return produce_uncheck_moves_();
  }
  MoveList<256> capture_moves = Board::capture_moves_();
  MoveList<256> mv_list;
  u64List src_arr;
  u64List dest_arr;
  const Color curr_turn = turn();
  const u64 occ = occupancy();

  for (int i = 0; i < capture_moves.size(); i++)
  {
    mv_list.PushBack(capture_moves[i]);
  }

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
          } else {
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
  if (!maps_generated_) {
    GeneratePseudoLegal_();
  }
  assert(!is_check());     // we shouldn't be calling this if we're in check

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
  // add en passant here...

  return mv_list;
}

bool Board::verify_move_safety_(CMove mv)
{
  assert(!is_check());     // we shouldn't be calling this if we're in check

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
    Square dest_square = u64ToSquare(dest);
    u64 captured_pawn = move_maps::pawnCaptures(dest_square, enemy_turn);
    // if (_isInLineWithKing(src | captured_pawn, c, bitboard[W_King + 6 * c])) {
    //   return false;
    // }
    return true;
  }

  // we have a normal move and now need to check for pins or moving into an attack.
  PieceType mover = piece_at(src);
  assert(colorOf(mover) == curr_turn);

  // If the piece is a king, we simply want to make sure we're not moving onto a controlled square.
  // we can't move king into a controlled square
  if (piece::is_king(mover))
  {

    // return _isUnderAttack(dest, enemyColor) ? false : true;
  }

  // Otherwise, we need to make sure the piece isn't pinned.
  u64 out_ray;
  // if (_isInLineWithKing(src, c, bitboard[W_King + 6 * c], out_ray)) {
  //   // can capture the piece that is pinning it
  //   // or move along pinned path
  //   return (dest & out_ray) ? true : false;
  // }
  return true;
}

bool Board::is_checking_move(CMove mv)
{
  const Color curr_turn = turn();
  const Color enemy_turn = oppositeColor(curr_turn);

  const PieceType king = piece::get_king(enemy_turn);

  // Castling
  if (mv.is_castle())
  {
    // Create mask with castled position. Check if rook has access to enemy
    u64 rook_position;
    u64 king_position;
    int k;
    if (mv.type_code() == move_type::CastleLong)
    {
      // rook_position = CASTLE_LONG_ROOK_DEST[moveColor];
      // king_position = CASTLE_LONG_KING_DEST[moveColor];
      // k = 0;
    }
    else
    {
      // rookPosition = CASTLE_SHORT_ROOK_DEST[moveColor];
      // kingPosition = CASTLE_SHORT_KING_DEST[moveColor];
      // k = 1;
    }
    u64 occ = occupancy();
    // occ &= ~kingStartingPositions[moveColor];
    // occ |= kingPosition;
    // occ &= ~rookStartingPositions[moveColor][k];
    // occ |= rookPosition;
    // u64 attacks = _rookAttacks(rookPosition, occ);
    // return attacks & bitboard_[king] ? true : false;
  }

  // en passant discovered check is the bane of all chess programs
  if (mv.type_code() == move_type::EnPassant)
  {
    u64 src = mv.src();
    u64 dest = mv.dest();
    Square dest_square = u64ToSquare(dest);
    // u64 captured_pawn = PAWN_MOVE_CACHE[dest_square][enemyColor];
    // if (_isInLineWithKing(src | captured_pawn, enemyColor, bitboard_[king]))
    // {
    //   return true;
    // }
    // return PAWN_CAPTURE_CACHE[destIndex][moveColor] & bitboard[king] ? true
  }

  u64 src = mv.src();
  u64 dest = mv.dest();
  PieceType mover = piece_at(src);

  if (colorOf(mover) != curr_turn) {
    std::raise(SIGINT);
  }
  assert(colorOf(mover) == curr_turn);

  u64 out_ray;
  // check for discoveries
  // if (_isInLineWithKing(src, enemy_turn, bitboard_[king], out_ray))
  // {
  //   return (dest & out_ray) ? false : true;
  // }

  // the mover color can attack the king. check for attacks based
  // on piece type
  u64 occ = occupancy();
  u64 king_position = bitboard_[king];

  if (mv.is_promotion())
    mover = mv.promoting_piece(curr_turn);

  u64 pieceMap = dest | (occ & ~src);
  Square dest_square = u64ToSquare(dest);

  if (piece::is_pawn(mover))
  {
    //return PAWN_CAPTURE_CACHE[dest_square][moveColor] & king_position ? true : false;
  }
  if (piece::is_knight(mover))
  {
    // return KNIGHT_MOVE_CACHE[dest_square] & king_position ? true : false;
  }
  if (piece::is_bishop(mover))
  {
  }
  if (piece::is_rook(mover))
  {
  }
  if (piece::is_queen(mover))
  {
  }
  return false;
}

void Board::GeneratePseudoLegal_()
{
  // assert(!maps_generated_);

  // generate attack-defend sets
  for (int i = 0; i < 64; i++)
  {
    state_.attack_map_[i] = 0;
    state_.defend_map_[i] = 0;
  }
  const u64 occ = occupancy();

  // for each piece: drop in to squares attacked
  u64List arr;

  bitscanAll(bitboard_[piece::white::pawn], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    Square sq = u64ToSquare(arr[i]);
    u64 attacks = move_maps::pawnCaptures(sq, White);
    state_.attack_map_[sq] |= attacks;
  }

  bitscanAll(bitboard_[piece::black::pawn], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    Square sq = u64ToSquare(arr[i]);
    u64 attacks = move_maps::pawnCaptures(sq, Black);
    state_.attack_map_[sq] |= attacks;
  }

  bitscanAll(bitboard_[piece::white::knight] | bitboard_[piece::black::knight], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    Square sq = u64ToSquare(arr[i]);
    u64 attacks = move_maps::knightMoves(sq);
    state_.attack_map_[sq] |= attacks;
  }

  bitscanAll(bitboard_[piece::white::king] | bitboard_[piece::black::king], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    Square sq = u64ToSquare(arr[i]);
    u64 attacks = move_maps::kingMoves(sq);
    state_.attack_map_[sq] |= attacks;
  }

  bitscanAll(bitboard_[piece::white::bishop] | bitboard_[piece::black::bishop] | bitboard_[piece::white::queen] | bitboard_[piece::black::queen], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    Square sq = u64ToSquare(arr[i]);
    u64 attacks = move_maps::bishopMoves(sq, occ);
    state_.attack_map_[sq] |= attacks;
  }

  bitscanAll(bitboard_[piece::white::rook] | bitboard_[piece::black::rook] | bitboard_[piece::white::queen] | bitboard_[piece::black::queen], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    Square sq = u64ToSquare(arr[i]);
    u64 attacks = move_maps::rookMoves(sq, occ);
    state_.attack_map_[sq] |= attacks;
  }

  // fill defend map
  for (Square sq = 0; sq < 64; sq++)
  {
    u64 attacker_square = u64FromSquare(sq);
    u64 attacked = state_.attack_map_[sq];

    bitscanAll(attacked, arr);
    for (int k = 0; k < arr.len(); k++)
    {
      u64 defender_square = arr[k];
      Square defender_index = u64ToSquare(defender_square);
      state_.defend_map_[defender_index] |= attacker_square;
    }
  }

  maps_generated_ = true;
}
