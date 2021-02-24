
#include "game/chessboard.hpp"

void Board::MakeMove(CMove mv)
{
  // set flags
  status_ = board::Status::NotCalculated;

  // copy old data and move onto stack
  state_stack_.Push(state_); // hotspot

  // wipe current state to reflect move
  state_.last_move = mv;
  state_.is_check = false;

  const Color curr_turn = turn();
  const int move_type_ = mv.type_code();

  bool check_threefold = true;


  // Increment counters

  state_.ply_count += 1;
  if (curr_turn == Black) {
    state_.fullmove_counter += 1;
  }

  if (move_type_ == move_type::NullMove)
  {
    // Set any state that might have changed if we did a null move
    state_.halfmove_counter += 1; // 50 move rule
    state_.last_moved_piece = piece::EmptyPiece;
    state_.last_captured_piece = piece::EmptyPiece;
    SetEpSquare_(-1);
  }
  else
  {
    if (is_checking_move(mv))
    {
      state_.is_check = true;
    }
    const u64 src = mv.src();
    const u64 dest = mv.dest();
    const PieceType mover = piece_at(src);
    const PieceType dest_former = piece_at(dest);

    if (piece::is_pawn(mover) || piece::is_empty(dest_former))
    {
      // On a pawn move or capture, reset the counters.
      state_.halfmove_counter = 0; // 50 move rule
      state_.has_repeated = 0;
      check_threefold = false;
    }
    else
    {
      // Otherwise increment.
      state_.halfmove_counter += 1;
    }

    // Pick up piece
    RemovePiece_(mover, src);

    // set state accordingly
    state_.last_moved_piece = mover;

    // Capturing
    if (move_type_ == move_type::EnPassant)
    {
      const Color enemy_turn = oppositeColor(curr_turn);
      const PieceType enemy_pawn = piece::get_pawn(enemy_turn);
      const u64 captured_pawn = move_maps::pawnMoves(u64ToSquare(dest), enemy_turn);
      RemovePiece_(enemy_pawn, captured_pawn);
      state_.last_captured_piece = enemy_pawn;
    }
    else if (piece::is_empty(dest_former))
    {
      // Not a capture
      state_.last_captured_piece = piece::EmptyPiece;
    }
    else
    {
      // Any other capture
      RemovePiece_(dest_former, dest);
      state_.last_captured_piece = dest_former;
    }

    // drop piece at new location
    if (mv.is_promotion())
    {
      AddPiece_(mv.promoting_piece(curr_turn), dest);
    }
    else
    {
      AddPiece_(mover, dest);
    }

    // If castle, then move the rook.
    if (move_type_ == move_type::CastleLong)
    {
      PieceType rook = piece::get_rook(curr_turn);
      RemovePiece_(rook, queenside_rook_starting_location[curr_turn]);
      AddPiece_(rook, board::castle::rook_long_dest[curr_turn]);
    }
    else if (move_type_ == move_type::CastleShort)
    {
      PieceType rook = piece::get_rook(curr_turn);
      RemovePiece_(rook, kingside_rook_starting_location[curr_turn]);
      AddPiece_(rook, board::castle::rook_short_dest[curr_turn]);
    }

    // revoke ALL castling rights if king moves (or if castle)
    if (piece::is_king(mover))
    {
      SetCastlingRights_(curr_turn, board::castle::long_, 0);
      SetCastlingRights_(curr_turn, board::castle::short_, 0);
    }

    // If a rook is capture or moved and it is on a starting square, then revoke.
    // Very special edge case covered: A king moves and captures a rook on it's starting square
    // and the other king hasn't moved...
    if (piece::is_rook(mover) || piece::is_rook(dest_former))
    {
      u64 targets = src | dest;
      if (targets & queenside_rook_starting_location[White])
      {
        SetCastlingRights_(White, board::castle::long_, 0);
      }
      else if (targets & kingside_rook_starting_location[White])
      {
        SetCastlingRights_(White, board::castle::short_, 0);
      }
      else if (targets & queenside_rook_starting_location[Black])
      {
        SetCastlingRights_(Black, board::castle::long_, 0);
      }
      else if (targets & kingside_rook_starting_location[Black])
      {
        SetCastlingRights_(Black, board::castle::short_, 0);
      }
    }

    // handle pawn double moves
    if (move_type_ == move_type::DoublePawn)
    {
      // note to self: does the ep square get stored in FEN regardless of adjacency to a pawn?
      Square dest_square = u64ToSquare(dest);
      // if we're adjacent to a pawn of the opposite color
      u64 ep_overlap = bitboard_[piece::flip(mover)] & move_maps::oneFileAdjacent(dest_square);
      if (ep_overlap)
      {
        // set ep square to one below the destination
        SetEpSquare_(u64ToSquare(move_maps::pawnMoves(dest_square, oppositeColor(curr_turn))));
      }
      else
      {
        // a pawn double move that can't be EP'd
        SetEpSquare_(-1);
      }
    }
    else
    {
      // not a pawn double move
      SetEpSquare_(-1);
    }
  }

  // annoying: deal with threefold
  if (check_threefold && !state_.has_repeated)
  {
    int counter = 0;
    u64 curr_hash = hash();

    // stack_size() - 1 is previous position
    // stack_size() - 2 is the one w/ same turn as current...

    for (int i = stack_size() - 2; i >= 0; i -= 2)
    {
      board::State &node = state_stack_.peek_at(i);
      if (node.hash == curr_hash)
      {
        counter++;
      }
      if (counter >= 2)
      {
        state_.has_repeated = 1;
        break;
      }
      if (piece::is_pawn(node.last_moved_piece) ||
          !piece::is_empty(node.last_captured_piece))
      {
        break;
      }
    }
  }

  // toggle turn
  SetTurn_(oppositeColor(curr_turn));
}

void Board::UnmakeMove()
{
  assert(state_stack_.can_pop());

  board::State &node = state_stack_.peek();
  CMove mv = state_.last_move;
  const int move_type_ = mv.type_code();

  if (move_type_ != move_type::NullMove)
  {
    const u64 src = mv.src();
    const u64 dest = mv.dest();
    const int move_type_ = mv.type_code();
    const Color move_turn = node.turn;
    const PieceType mover = state_.last_moved_piece;
    const PieceType dest_former = state_.last_captured_piece;

    // if castle then restore rook location
    if (move_type_ == move_type::CastleLong)
    {
      PieceType rook = piece::get_rook(move_turn);
      RemovePiece_(rook, board::castle::rook_long_dest[move_turn]);
      AddPiece_(rook, queenside_rook_starting_location[move_turn]);
    }
    else if (move_type_ == move_type::CastleShort)
    {
      PieceType rook = piece::get_rook(move_turn);
      RemovePiece_(rook, board::castle::rook_short_dest[move_turn]);
      AddPiece_(rook, kingside_rook_starting_location[move_turn]);
    }

    // restore piece to old src
    AddPiece_(mover, src);

    // Remove piece from dest
    if (mv.is_promotion())
    {
      RemovePiece_(mv.promoting_piece(move_turn), dest);
    }
    else
    {
      RemovePiece_(mover, dest);
    }

    // now restore the old piece that was at dest
    if (move_type_ == move_type::EnPassant)
    {
      // instead of restoring at capture location, restore one above
      Color enemy_color = oppositeColor(move_turn);
      AddPiece_(piece::get_pawn(enemy_color), move_maps::pawnMoves(u64ToSquare(dest), enemy_color));
    }
    else if (!piece::is_empty(dest_former))
    {
      AddPiece_(dest_former, dest); // restore to capture location
    }
  }

  // if it's a null move we just don't do anything

  state_ = node; // hotspot

  // update flags
  status_ = board::Status::Playing; // I assume we're not going past a terminal state, but could be wrong

  state_stack_.Pop();
}
