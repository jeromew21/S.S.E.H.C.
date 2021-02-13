#ifndef DEFINITIONS_HPP
#define DEFINITIONS_HPP

#include <random>
#include <string>

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

const std::string RANK_NAMES[] = {"1", "2", "3", "4", "5", "6", "7", "8"};
const std::string FILE_NAMES[] = {"a", "b", "c", "d", "e", "f", "g", "h"};

#endif
