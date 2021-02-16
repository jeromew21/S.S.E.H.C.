#include "game/chessboard.hpp"

void Board::GeneratePseudoLegal_()
{
  assert(!_maps_generated);

  // generate attack-defend sets
  for (int i = 0; i < 64; i++)
  {
    attack_map_[i] = 0;
    defend_map_[i] = 0;
  }
  u64 occ = occupancy();

  // for each piece: drop in to squares attacked
  u64List arr;

  bitscanAll(bitboard_[piece::white::pawn], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    u64 pos = arr[i]; // position of piece
    Square sq = u64ToSquare(sq);
    u64 attacks = move_maps::pawnCaptures(sq, White, occ);
    attack_map_[sq] |= attacks;
  }

  bitscanAll(bitboard_[piece::black::pawn], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    u64 pos = arr[i]; // position of piece
    Square sq = u64ToSquare(sq);
    u64 attacks = move_maps::pawnCaptures(sq, Black, occ);
    attack_map_[sq] |= attacks;
  }

  bitscanAll(bitboard_[piece::white::knight] | bitboard_[piece::black::knight], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    u64 pos = arr[i]; // position of piece
    Square sq = u64ToSquare(sq);
    u64 attacks = move_maps::knightMoves(sq, occ);
    attack_map_[sq] |= attacks;
  }

  bitscanAll(bitboard_[piece::white::king] | bitboard_[piece::black::king], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    u64 pos = arr[i]; // position of piece
    Square sq = u64ToSquare(sq);
    u64 attacks = move_maps::kingMoves(sq, occ);
    attack_map_[sq] |= attacks;
  }

  bitscanAll(bitboard_[piece::white::bishop] | bitboard_[piece::black::bishop] | bitboard_[piece::white::queen] | bitboard_[piece::black::queen], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    u64 pos = arr[i]; // position of piece
    Square sq = u64ToSquare(sq);
    u64 attacks = move_maps::bishopMoves(sq, occ);
    attack_map_[sq] |= attacks;
  }

  bitscanAll(bitboard_[piece::white::rook] | bitboard_[piece::black::rook] | bitboard_[piece::white::queen] | bitboard_[piece::black::queen], arr);
  for (int i = 0; i < arr.len(); i++)
  {
    u64 pos = arr[i]; // position of piece
    Square sq = u64ToSquare(sq);
    u64 attacks = move_maps::bishopMoves(sq, occ);
    attack_map_[sq] |= attacks;
  }

  // fill defend map
  for (Square sq = 0; sq < 64; sq++)
  {
    u64 attacker_square = u64FromSquare(sq);
    u64 attacked = attack_map_[sq];

    bitscanAll(attacked, arr);
    for (int k = 0; k < arr.len(); k++)
    {
      u64 defender_square = arr[k];
      Square defender_index = u64ToSquare(defender_square);
      defend_map_[defender_index] |= attacker_square;
    }
  }

  _maps_generated = true;
}

MoveList<256> Board::produce_uncheck_moves_() {
  assert(_maps_generated);
  assert(is_check());
  MoveList<256> mv_list;
  return mv_list;
}

MoveList<256> Board::legal_moves()
{
  assert(_maps_generated);
  if (is_check()) {
    return produce_uncheck_moves_();
  }
  MoveList<256> capture_moves = Board::capture_moves_();
  MoveList<256> mv_list;
  u64List src_arr;
  u64List dest_arr;
  Color curr_turn = get_turn();
  Color friendlies = occupancy(curr_turn);
  Color enemies = occupancy(oppositeColor(curr_turn));
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
      Square src = u64ToSquare(src_arr[i]);
      u64 captures = (~enemies) & (~friendlies) & attack_map_[src]; // can't capture allies
      bitscanAll(captures, dest_arr);
      for (int k = 0; k < dest_arr.len(); k++)
      {
        Square dest = u64ToSquare(dest_arr[i]);
        if (piece::is_pawn(piece_) && move_maps::isPromotingRank(src, curr_turn)) // if pawn and promotion
        {
          mv_list.PushBack(CMove(src, dest, move_type::QPromotion));
          mv_list.PushBack(CMove(src, dest, move_type::RPromotion));
          mv_list.PushBack(CMove(src, dest, move_type::BPromotion));
          mv_list.PushBack(CMove(src, dest, move_type::KPromotion));
        }
        else
        {
          mv_list.PushBack(CMove(src, dest, move_type::Default));
        }
      }
    }
  }

  return mv_list;
}

MoveList<256> Board::capture_moves_()
{
  assert(_maps_generated);
  assert(!is_check());

  MoveList<256> mv_list;
  u64List src_arr;
  u64List dest_arr;
  Color curr_turn = get_turn();
  Color friendlies = occupancy(curr_turn);
  Color enemies = occupancy(oppositeColor(curr_turn));

  for (PieceType piece_ = curr_turn; piece_ < 12; piece_ += 2)
  {
    bitscanAll(bitboard_[piece_], src_arr);
    for (int i = 0; i < src_arr.len(); i++)
    {
      Square src = u64ToSquare(src_arr[i]);
      u64 captures = enemies & (~friendlies) & attack_map_[src]; // can't capture allies
      bitscanAll(captures, dest_arr);
      for (int k = 0; k < dest_arr.len(); k++)
      {
        Square dest = u64ToSquare(dest_arr[i]);
        if (piece::is_pawn(piece_) && move_maps::isPromotingRank(src, curr_turn)) // if pawn and promotion
        {
          mv_list.PushBack(CMove(src, dest, move_type::QPromotion));
          mv_list.PushBack(CMove(src, dest, move_type::RPromotion));
          mv_list.PushBack(CMove(src, dest, move_type::BPromotion));
          mv_list.PushBack(CMove(src, dest, move_type::KPromotion));
        }
        else
        {
          mv_list.PushBack(CMove(src, dest, move_type::Default));
        }
      }
    }
  }

  // add en passant

  return mv_list;
}

bool Board::is_checking_move(CMove mv)
{
  return false;
}
