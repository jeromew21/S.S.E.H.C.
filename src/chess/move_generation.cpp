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

MoveList<256> Board::legal_moves(bool captures_only)
{
  assert(_maps_generated);
  MoveList<256> captures = Board::capture_moves_();
  if (captures_only) {
    return captures;
  }
  MoveList<256> move_list;
  return captures;
}


MoveList<256> Board::legal_moves()
{
  return legal_moves(false);
}

MoveList<256> Board::capture_moves_()
{
  MoveList<256> mv_list;
  u64List arr;
  for (PieceType piece = get_turn(); piece < 12; piece += 2) {
    u64 locations = bitboard_[piece];

  }

  // add en passant

  return mv_list;
}

bool Board::is_checking_move(CMove mv)
{
  return false;
}
