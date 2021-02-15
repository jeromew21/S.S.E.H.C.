#include "game/chessboard.hpp"

void Board::GeneratePseudoLegal_() {
  // generate attack-defend sets
  for (int i = 0; i < 64; i++)
  {
    attack_map_[i] = 0;
    defend_map_[i] = 0;
  }
  u64 occ = occupancy();

  // for each piece: drop in to squares attacked
  std::array<u64, 64> arr;
  int count;

  // bitscanAll(arr, bitboard[W_Pawn], count);
  // for (int i = 0; i < count; i++)
  // {
  //   u64 pos = arr[i]; // position of piece
  //   int posIndex = u64ToIndex(pos);
  //   u64 attacks = PAWN_CAPTURE_CACHE[posIndex][White];
  //   attackMap[posIndex] |= attacks;
  // }
  // bitscanAll(arr, bitboard[B_Pawn], count);
  // for (int i = 0; i < count; i++)
  // {
  //   u64 pos = arr[i]; // position of piece
  //   int posIndex = u64ToIndex(pos);
  //   u64 attacks = PAWN_CAPTURE_CACHE[posIndex][Black];
  //   attackMap[posIndex] |= attacks;
  // }

  // bitscanAll(arr, bitboard[W_Knight] | bitboard[B_Knight], count);
  // for (int i = 0; i < count; i++)
  // {
  //   u64 pos = arr[i]; // position of piece
  //   int posIndex = u64ToIndex(pos);
  //   u64 attacks = KNIGHT_MOVE_CACHE[posIndex];
  //   attackMap[posIndex] |= attacks;
  // }

  // bitscanAll(arr, bitboard[W_King] | bitboard[B_King], count);
  // for (int i = 0; i < count; i++)
  // {
  //   u64 pos = arr[i]; // position of piece
  //   int posIndex = u64ToIndex(pos);
  //   u64 attacks = KING_MOVE_CACHE[posIndex];
  //   attackMap[posIndex] |= attacks;
  // }

  // bitscanAll(arr,
  //            bitboard[W_Bishop] | bitboard[B_Bishop] | bitboard[W_Queen] |
  //                bitboard[B_Queen],
  //            count);
  // for (int i = 0; i < count; i++)
  // {
  //   u64 pos = arr[i]; // position of piece
  //   int posIndex = u64ToIndex(pos);
  //   u64 attacks = _bishopAttacks(pos, occ);
  //   attackMap[posIndex] |= attacks;
  // }

  // bitscanAll(arr,
  //            bitboard[W_Rook] | bitboard[B_Rook] | bitboard[W_Queen] |
  //                bitboard[B_Queen],
  //            count);
  // for (int i = 0; i < count; i++)
  // {
  //   u64 pos = arr[i]; // position of piece
  //   int posIndex = u64ToIndex(pos);
  //   u64 attacks = _rookAttacks(pos, occ);
  //   attackMap[posIndex] |= attacks;
  // }

  // // load defend map
  // for (int i = 0; i < 64; i++)
  // {
  //   u64 attacked = attackMap[i];
  //   u64 attackerSq = u64FromIndex(i);
  //   // for each attacked:
  //   bitscanAll(arr, attacked, count);
  //   for (int k = 0; k < count; k++)
  //   {
  //     u64 defenderSq = arr[k];
  //     int defenderIndex = u64ToIndex(defenderSq);
  //     defendMap[defenderIndex] |= attackerSq;
  //   }
  // }
}

MoveVector<256> Board::legal_moves()
{
  MoveVector<256> mv;
  return mv;
}

bool Board::is_checking_move(CMove mv)
{
  return false;
}
