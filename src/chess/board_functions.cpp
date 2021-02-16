#include "game/chessboard.hpp"

void Board::MakeMove(CMove mv)
{
  // set flags
  status_ = board::Status::NotCalculated;
  maps_generated_ = false;

  // copy old data and move onto stack
  state_stack_.Push(state_);

  // wipe current state to reflect move
  state_.last_move = mv;
  if (is_checking_move(mv))
  {
    state_.is_check = true;
  }

  // wipe these elements for posterity
  state_.last_moved_piece = piece::EmptyPiece;
  state_.last_captured_piece = piece::EmptyPiece;

  const int move_type_ = mv.type_code();
  const Color move_color = turn();

  if (move_type_ == move_type::NullMove)
  {
    // Set any state that might have changed if we did a null move
    state_.halfmove_counter += 1;
    SetEpSquare_(-1);
  }
  else
  {
    const u64 src = mv.src();
    const u64 dest = mv.dest();
    const PieceType mover = piece_at(src);
    const PieceType dest_former = piece_at(dest);

    if (piece::is_pawn(mover) || piece::is_empty(dest_former))
    {
      // On a pawn move or capture, reset the counters.
      state_.halfmove_counter = 0;
      state_.has_repeated = 0;
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
      // Handle en passant capture
      if (mover == piece::white::pawn)
      {
        // u64 capturedPawn = PAWN_MOVE_CACHE[u64ToIndex(dest)][Black];
        // _removePiece(B_Pawn, capturedPawn);
        // boardState[LAST_CAPTURED_INDEX] = B_Pawn;
      }
      else
      {
        // u64 capturedPawn = PAWN_MOVE_CACHE[u64ToIndex(dest)][White];
        // _removePiece(W_Pawn, capturedPawn);
        // boardState[LAST_CAPTURED_INDEX] = W_Pawn;
      }
    }
    else if (!piece::is_empty(dest_former))
    {
      // Any other capture
      RemovePiece_(dest_former, dest);
      state_.last_captured_piece = dest_former;
    }

    // drop piece at new location
    if (mv.is_promotion())
    {
      AddPiece_(mv.promoting_piece(move_color), dest);
    }
    else
    {
      AddPiece_(mover, dest);
    }

    // if (moveType == MoveTypeCode::CastleLong)
    // {
    //   if (mover == W_King)
    //   {
    //     _removePiece(W_Rook, rookStartingPositions[White][0]);
    //     _addPiece(W_Rook, CASTLE_LONG_ROOK_DEST[White]);
    //   }
    //   else
    //   {
    //     _removePiece(B_Rook, rookStartingPositions[Black][0]);
    //     _addPiece(B_Rook, CASTLE_LONG_ROOK_DEST[Black]);
    //   }
    // }
    // else if (moveType == MoveTypeCode::CastleShort)
    // {
    //   if (mover == W_King)
    //   {
    //     _removePiece(W_Rook, rookStartingPositions[White][1]);
    //     _addPiece(W_Rook, CASTLE_SHORT_ROOK_DEST[White]);
    //   }
    //   else
    //   {
    //     _removePiece(B_Rook, rookStartingPositions[Black][1]);
    //     _addPiece(B_Rook, CASTLE_SHORT_ROOK_DEST[Black]);
    //   }
    // }

    // // revoke castling rights
    // if (mover == W_King)
    // {
    //   _setCastlingPrivileges(White, 0, 0);
    // }
    // else if (mover == B_King)
    // {
    //   _setCastlingPrivileges(Black, 0, 0);
    // }
    // if ((mover == B_Rook || mover == W_Rook) ||
    //     (destFormer == B_Rook || destFormer == W_Rook))
    // {
    //   u64 targets = src | dest;
    //   if (targets & rookStartingPositions[White][0])
    //   {
    //     _setCastlingPrivileges(White, 0, boardState[W_SHORT_INDEX]);
    //   }
    //   if (targets & rookStartingPositions[White][1])
    //   {
    //     _setCastlingPrivileges(White, boardState[W_LONG_INDEX], 0);
    //   }
    //   if (targets & rookStartingPositions[Black][0])
    //   {
    //     _setCastlingPrivileges(Black, 0, boardState[B_SHORT_INDEX]);
    //   }
    //   if (targets & rookStartingPositions[Black][1])
    //   {
    //     _setCastlingPrivileges(Black, boardState[B_LONG_INDEX], 0);
    //   }
    // }

    // handle pawn double moves
    if (move_type_ == move_type::DoublePawn)
    {
      // see if adjacent squares have pawns
      if (mover == piece::white::pawn)
      {
        // int destIndex = u64ToIndex(dest);
        // if (bitboard[B_Pawn] & ONE_ADJACENT_CACHE[destIndex])
        // {
        //   SetEpSquare_(u64ToIndex(PAWN_MOVE_CACHE[destIndex][Black]));
        // }
        // else
        // {
        //   SetEpSquare_(-1);
        // }
      }
      else
      {
        // int destIndex = u64ToIndex(dest);
        // if (bitboard[W_Pawn] & ONE_ADJACENT_CACHE[destIndex])
        // {
        //   SetEpSquare_(u64ToIndex(PAWN_MOVE_CACHE[destIndex][White]));
        // }
        // else
        // {
        //   SetEpSquare_(-1);
        // }
      }
    }
    else
    {
      // all other moves: en passant square is nulled
      SetEpSquare_(-1);
    }
  }

  // annoying: deal with threefold
  // if (!boardState[HAS_REPEATED_INDEX]) {
  //   int counter = 0;
  //   for (int i = stack.getIndex() - 2; i >= 0; i -= 2) {
  //     BoardStateNode &node = stack.peekNodeAt(i);
  //     if (node.hash == zobrist()) {
  //       counter++;
  //     }
  //     if (node.data[LAST_MOVED_INDEX] % 6 == 0 ||
  //         node.data[LAST_CAPTURED_INDEX] != Empty) {
  //       break;
  //     }
  //   }
  //   if (counter >= 2) {
  //     boardState[HAS_REPEATED_INDEX] = 1;
  //   }
  // }

  // toggle turn
  SetTurn_(oppositeColor(move_color));
}

void Board::UnmakeMove()
{
  assert (state_stack_.can_pop());
  board::State &node = state_stack_.peek();
  CMove mv = state_.last_move;
  const int move_type_ = mv.type_code();

  if (move_type_ != move_type::NullMove) {
    // u64 src = mv.getSrc();
    // u64 dest = mv.getDest();
    // int moveType = mv.getTypeCode();
    // PieceType mover = boardState[LAST_MOVED_INDEX];
    // PieceType destFormer = boardState[LAST_CAPTURED_INDEX];

    // if (moveType == MoveTypeCode::CastleLong ||
    //     moveType == MoveTypeCode::CastleShort) {
    //   if (mover == W_King) {
    //     if (moveType == MoveTypeCode::CastleLong) {
    //       _removePiece(W_Rook, CASTLE_LONG_ROOK_DEST[White]);
    //       _addPiece(W_Rook, rookStartingPositions[White][0]);
    //     } else {
    //       _removePiece(W_Rook, CASTLE_SHORT_ROOK_DEST[White]);
    //       _addPiece(W_Rook, rookStartingPositions[White][1]);
    //     }
    //   } else {
    //     if (moveType == MoveTypeCode::CastleLong) {
    //       _removePiece(B_Rook, CASTLE_LONG_ROOK_DEST[Black]);
    //       _addPiece(B_Rook, rookStartingPositions[Black][0]);
    //     } else {
    //       _removePiece(B_Rook, CASTLE_SHORT_ROOK_DEST[Black]);
    //       _addPiece(B_Rook, rookStartingPositions[Black][1]);
    //     }
    //   }
    // }

    // // move piece to old src
    // _addPiece(mover, src);

    // if (mv.isPromotion()) {
    //   _removePiece(mv.getPromotingPiece(flipColor(turn())), dest);
    // } else {
    //   _removePiece(mover, dest);
    // }

    // // restore dest
    // if (moveType ==
    //     MoveTypeCode::EnPassant) { // instead of restoring at capture
    //                                // location, restore one above
    //   if (mover == W_Pawn) {
    //     _addPiece(B_Pawn, PAWN_MOVE_CACHE[u64ToIndex(dest)][Black]);
    //   } else {
    //     _addPiece(W_Pawn, PAWN_MOVE_CACHE[u64ToIndex(dest)][White]);
    //   }
    // } else if (destFormer != Empty) {
    //   _addPiece(destFormer, dest); // restore to capture location
    // }
  }

  SetTurn_(node.turn);
  SetEpSquare_(node.en_passant_square);
  // _setCastlingPrivileges(White, node.data[W_LONG_INDEX],
  //                        node.data[W_SHORT_INDEX]);
  // _setCastlingPrivileges(Black, node.data[B_LONG_INDEX],
  //                        node.data[B_SHORT_INDEX]);

  state_.last_captured_piece = node.last_captured_piece;
  state_.last_moved_piece = node.last_moved_piece;
  state_.has_repeated = node.has_repeated;
  state_.halfmove_counter = node.halfmove_counter;

  state_.hash = node.hash; // QUESTION: Do we do this??? Seems like a lot of the incremental update is for naught. Oh well...

  state_.attack_map_ = node.attack_map_;
  state_.defend_map_ = node.defend_map_;

  // update flags
  maps_generated_ = true;
  status_ = board::Status::Playing; // I assume we're not going past a terminal state, but could be wrong

  state_stack_.Pop();
}

void Board::AddPiece_(PieceType piece, u64 location)
{
  // Square sq = u64ToSquare(location);
  // u64 p_hash = ZOBRIST_HASHES[64 * piece + sq];
  // _zobristHash ^= p_hash;
  bitboard_[piece] |= location;
}

void Board::RemovePiece_(PieceType piece, u64 location)
{
  // Square sq = u64ToSquare(location);
  // u64 p_hash = ZOBRIST_HASHES[64 * piece + sq];
  // _zobristHash ^= p_hash;
  bitboard_[piece] &= ~location;
}

void Board::SetEpSquare_(Square ep_square)
{
}

void Board::SetCastlingRights_(Color color, int direction, int value)
{
}

void Board::SetTurn_(Color turn)
{
}

bool Board::is_check()
{
  return state_.is_check;
}

void Board::LoadPosition(PieceType piece_list[64], Color turn_to_move, int ep_square,
                         board::castle::Rights castling_rights, int fullmove, int halfmove)
{
  // Clearing and resetting state
  // Need to hard reset completely.
  maps_generated_ = false;
  state_stack_.Clear();
  status_ = board::Status::NotCalculated;
  state_ = board::State();
  SetEpSquare_(-1);
  SetCastlingRights_(White, board::castle::long_, 1);
  SetCastlingRights_(White, board::castle::short_, 1);
  SetCastlingRights_(Black, board::castle::long_, 1);
  SetCastlingRights_(Black, board::castle::short_, 1);

  for (PieceType i = 0; i < 12; i++)
  {
    bitboard_[i] = 0;
  }

  // Make sure the hash is properly initialized
  // Otherwise there could be bugs
  hash_ = 0; // start at zero?

  for (Square i = 0; i < 64; i++)
  {
    PieceType piece = piece_list[i];

    if (piece != piece::EmptyPiece)
    {
      AddPiece_(piece, u64FromSquare(i));
    }
  }

  SetEpSquare_(ep_square);
  // SetCastlingRights_(castling_rights)

  GeneratePseudoLegal_();
}

PieceType Board::piece_at(u64 location) const
{
  for (PieceType i = 0; i < 12; i++)
  {
    if (location & bitboard_[i])
      return i;
  }
  assert(false);
}

void Board::Reset()
{
  LoadPosition("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
}

Board::Board()
{
  Reset();
}
