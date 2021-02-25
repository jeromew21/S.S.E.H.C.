#include "game/chessboard.hpp"

const int castle_hash_inds[2][2] = {
    {64 * 12 + 1, 64 * 12 + 2},
    {64 * 12 + 3, 64 * 12 + 4},
};
const int ep_hash_ind = 64 * 12 + 5;

u64 HASHES[781];

uint32_t HashRand32()
{
    static uint32_t r = 0;
    return (r = 1664525L*r + 1013904223L);
}

// zobrist hashing goes here
void zobrist::init()
{
  verbose_info("initializing zobrist hashes");
  for (int i = 0; i < 781; i++)
  {
    u64 hash = HashRand32();
    hash = (hash << 32) | HashRand32();
    HASHES[i] = hash;
  }
}

void Board::AddPiece_(PieceType piece, u64 location)
{
  assert(!(bitboard_[piece] & location));
  Square sq = u64ToSquare(location);
  piece_board_[sq] = piece;
  occupancy_bitboard_ |= location;
  bitboard_[piece] |= location;
  state_.hash ^= HASHES[64*piece + sq];
}

void Board::RemovePiece_(PieceType piece, u64 location)
{
  assert(bitboard_[piece] & location);
  Square sq = u64ToSquare(location);
  piece_board_[sq] = piece::EmptyPiece;
  occupancy_bitboard_ &= ~location;
  bitboard_[piece] &= ~location;
  state_.hash ^= HASHES[64*piece + sq];
}

void Board::SetEpSquare_(Square ep_square)
{
  Square current_sq = state_.en_passant_square;
  if (ep_square == current_sq)
    return; // do nothing

  if (current_sq != -1)
  {
    // there is an en passant square already
    // we want to remove it
    Col current_col = squareToCol(current_sq);
    state_.hash ^= HASHES[ep_hash_ind + current_col];
  }
  if (ep_square != -1)
  {
    // we are adding a new one
    Col new_col = squareToCol(ep_square);
    state_.hash ^= HASHES[ep_hash_ind + new_col];
  }
  state_.en_passant_square = ep_square;
}

void Board::SetCastlingRights_(Color color, int direction, int value)
{
  if (state_.castling_rights.get(color, direction) == value)
    return;
  // we are for sure toggling the value
  state_.castling_rights.Set(color, direction, value);
  state_.hash ^= HASHES[castle_hash_inds[color][direction == board::castle::long_ ? 0 : 1]];
}

void Board::SetTurn_(Color turn)
{
  if (turn != state_.turn)
  {
    state_.hash ^= HASHES[64 * 12];
    state_.turn = turn;
  }
}
