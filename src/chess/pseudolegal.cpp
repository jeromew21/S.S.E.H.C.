// #include "game/chessboard.hpp"

// /**
//  * Procedure: For each piece location we add its attacking squares to the mask for that location...
//  * 
//  * Then we calculate the inverse, for each square, we look up the squares it attacks and add the defending square to each of those...
//  * 
//  * Almost definitely going to be a hotspot...
//  */
// void Board::GeneratePseudoLegal_()
// {
//   // We don't want to generate twice.
//   assert(!maps_generated_);

//   // generate attack-defend sets
//   for (int i = 0; i < 64; i++)
//   {
//     state_.attack_map_[i] = 0;
//     state_.defend_map_[i] = 0;
//   }
//   const u64 occ = occupancy();

//   // for each piece: drop in to squares attacked
//   u64List arr;

//   bitscanAll(bitboard_[piece::white::pawn], arr);
//   for (int i = 0; i < arr.len(); i++)
//   {
//     Square sq = u64ToSquare(arr[i]);
//     u64 attacks = move_maps::pawnCaptures(sq, White);
//     state_.attack_map_[sq] |= attacks;
//   }

//   bitscanAll(bitboard_[piece::black::pawn], arr);
//   for (int i = 0; i < arr.len(); i++)
//   {
//     Square sq = u64ToSquare(arr[i]);
//     u64 attacks = move_maps::pawnCaptures(sq, Black);
//     state_.attack_map_[sq] |= attacks;
//   }

//   bitscanAll(bitboard_[piece::white::knight] | bitboard_[piece::black::knight], arr);
//   for (int i = 0; i < arr.len(); i++)
//   {
//     Square sq = u64ToSquare(arr[i]);
//     u64 attacks = move_maps::knightMoves(sq);
//     state_.attack_map_[sq] |= attacks;
//   }

//   bitscanAll(bitboard_[piece::white::king] | bitboard_[piece::black::king], arr);
//   for (int i = 0; i < arr.len(); i++)
//   {
//     Square sq = u64ToSquare(arr[i]);
//     u64 attacks = move_maps::kingMoves(sq);
//     state_.attack_map_[sq] |= attacks;
//   }

//   bitscanAll(bitboard_[piece::white::bishop] | bitboard_[piece::black::bishop] | bitboard_[piece::white::queen] | bitboard_[piece::black::queen], arr);
//   for (int i = 0; i < arr.len(); i++)
//   {
//     Square sq = u64ToSquare(arr[i]);
//     u64 attacks = move_maps::bishopMoves(sq, occ);
//     state_.attack_map_[sq] |= attacks;
//   }

//   bitscanAll(bitboard_[piece::white::rook] | bitboard_[piece::black::rook] | bitboard_[piece::white::queen] | bitboard_[piece::black::queen], arr);
//   for (int i = 0; i < arr.len(); i++)
//   {
//     Square sq = u64ToSquare(arr[i]);
//     u64 attacks = move_maps::rookMoves(sq, occ);
//     state_.attack_map_[sq] |= attacks;
//   }

//   // fill defend map
//   for (Square sq = 0; sq < 64; sq++)
//   {
//     u64 attacker_square = u64FromSquare(sq);
//     u64 attacked = state_.attack_map_[sq];

//     bitscanAll(attacked, arr);
//     for (int k = 0; k < arr.len(); k++)
//     {
//       u64 defender_square = arr[k];
//       Square defender_index = u64ToSquare(defender_square);
//       state_.defend_map_[defender_index] |= attacker_square;
//     }
//   }

//   maps_generated_ = true;
// }