#ifndef DEFINITIONS_HPP
#define DEFINITIONS_HPP

#include <random>
#include <string>

#define PieceType int // white king, white queen, etc
#define Color int     // either white or black
#define Square int    // [0, 64) that indexes a board location
#define u64 uint64_t  // 64 bit bitboard
#define Row int       // [0, 8)
#define Col int       // [0, 8)
#define Score int
#define NodeType int8_t // smaller theoretically saves space for the hash table...

const Color White = 0; //l ast bit of piece type
const Color Black = 1; // last bit of piece type

const std::string RANK_NAMES[] = {"1", "2", "3", "4", "5", "6", "7", "8"};
const std::string FILE_NAMES[] = {"a", "b", "c", "d", "e", "f", "g", "h"};

inline int max(int a, int b) { return a > b ? a : b; }
inline int min(int a, int b) { return a < b ? a : b; }

//checking row and column in bounds
inline bool inBounds(Row r, Col c) { return (r >= 0 && r < 8) && (c >= 0 && c < 8); }

#endif
