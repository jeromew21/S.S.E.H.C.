#ifndef BOARD_HPP
#define BOARD_HPP

#include "definitions.hpp"
#include "misc/bits.hpp"

int distToClosestCorner(Row r, Col c); // manhattan distance
inline bool inBounds(int y, int x) { return (y >= 0 && y < 8) && (x >= 0 && x < 8); }

struct BoardState
{
  int move_number;    // full move
  int ply;            // half move
  int en_passant_col; // if double push, then 0-7, else -1
  int w_long;         // would castling be legal
  int w_short;
  int b_long;
  int b_short;
  PieceType last_moved;    // I think this is the piece type that last moved
  PieceType last_captured; // might be a piece type
  int has_repeated;        // three-fold repetition
};

enum GameResult
{
  WhiteWin,
  BlackWin,
  Draw,
  Playing,
  Stalemate,
  NotCalculated
};


#endif