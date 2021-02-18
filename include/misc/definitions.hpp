#ifndef DEFINITIONS_HPP
#define DEFINITIONS_HPP

#include <assert.h>

/**
 * Denotes a piece type (white king, black queen, etc).
 */
#define PieceType int

/**
 * either white or black.
 */
#define Color int

/**
 * [0, 64) that indexes a board location.
 */
#define Square int

/**
 * 64 bit bitboard.
 */
#define u64 uint64_t

/**
 * [0, 8)
 */
#define Row int

/**
 * [0, 8)
 */
#define Col int

/**
 * A node score, measured in centipawns(?).
 */
#define Score int

/**
 * A node type (cut, pv, all).
 * 
 * The smaller size theoretically cuts down space in the hash table.
 */
#define NodeType int8_t

const Color White = 0; // last bit of piece type
const Color Black = 1; // last bit of piece type

inline int max(int a, int b) { return a > b ? a : b; }
inline int min(int a, int b) { return a < b ? a : b; }

#endif
