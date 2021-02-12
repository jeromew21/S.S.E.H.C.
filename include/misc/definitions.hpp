#ifndef DEFINITIONS_HPP
#define DEFINITIONS_HPP

#include <random>
#include <string>
#include <limits>

#define PieceType int //white king, white queen, etc
#define Color int //either white or black
#define Score int
#define NodeType int8_t
#define Square int //0-63 that indexes a board location
#define u64 uint64_t //64 bit bitboard
#define Row int
#define Col int

const Color White = 0; //last bit of the piece type
const Color Black = 1; //last bit of piece type
//const Color Neutral = -1;

struct BoardState {
    int move_number; //full move
    int ply; //half move
    int en_passant_col; //if double push, then 0-7, else -1
    int w_long; //would castling be legal
    int w_short;
    int b_long;
    int b_short;
    PieceType last_moved; //i think this is the piece type that last moved
    PieceType last_captured; //might be a piece type
    int has_repeated; //3fold repetition
};

enum GameResult {
  WhiteWin,
  BlackWin,
  Draw,
  Playing,
  Stalemate,
  NotCalculated
};

u64 u64FromPair(Row r, Col c); 
Square squareFromPair(Row r, Col c);
int distToClosestCorner(Row r, Col c); //manhatten distance

const std::string RANK_NAMES[] = {"1", "2", "3", "4", "5", "6", "7", "8"};
const std::string FILE_NAMES[] = {"a", "b", "c", "d", "e", "f", "g", "h"};

std::string statusToString(GameResult bs, bool concise);
std::string colorToString(Color c);

std::string squareName(u64 square);
std::string squareName(Square square);

Square indexFromSquareName(std::string alg);

int rand100();
void srand100(int seed);

#endif
