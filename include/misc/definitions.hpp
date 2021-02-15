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

const Color White = 0; // last bit of piece type
const Color Black = 1; // last bit of piece type


inline int max(int a, int b) { return a > b ? a : b; }
inline int min(int a, int b) { return a < b ? a : b; }


#endif
