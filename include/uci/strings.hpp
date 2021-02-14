#ifndef UCISTRINGS_HPP
#define UCISTRINGS_HPP

#include <string>
#include "misc/definitions.hpp"
#include "game/cmove.hpp"

const std::string RANK_NAMES[] = {"1", "2", "3", "4", "5", "6", "7", "8"};
const std::string FILE_NAMES[] = {"a", "b", "c", "d", "e", "f", "g", "h"};

// to e2e4, b1c3, etc
std::string moveToUCIAlgebraic(CMove &mv);

// location <=> e4, f6, etc
std::string squareName(u64 square);
std::string squareName(Square square);
Square squareFromName(std::string alg);
u64 u64FromName(std::string alg);

#endif