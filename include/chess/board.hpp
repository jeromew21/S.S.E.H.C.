#ifndef BOARD_HPP
#define BOARD_HPP

#include "definitions.hpp"

u64 u64FromPair(Row r, Col c);
Square squareFromPair(Row r, Col c);
int distToClosestCorner(Row r, Col c); // manhatten distance

std::string squareName(u64 square);
std::string squareName(Square square);
Square indexFromSquareName(std::string alg);

struct BoardState {
  int move_number;    // full move
  int ply;            // half move
  int en_passant_col; // if double push, then 0-7, else -1
  int w_long;         // would castling be legal
  int w_short;
  int b_long;
  int b_short;
  PieceType last_moved;    // i think this is the piece type that last moved
  PieceType last_captured; // might be a piece type
  int has_repeated;        // 3fold repetition
};

enum GameResult { WhiteWin, BlackWin, Draw, Playing, Stalemate, NotCalculated };

std::string statusToString(GameResult bs, bool concise);

#endif