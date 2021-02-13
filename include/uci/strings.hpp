#ifndef STRINGS_HPP
#define STRINGS_HPP

#include <string>
#include "definitions.hpp"
#include "chess/cmove.hpp"

// to e2e4, b1c3, etc
std::string moveToUCIAlgebraic(CMove &mv);

// location <=> e4, f6, etc
std::string squareName(u64 square);
std::string squareName(Square square);
Square squareFromName(std::string alg);
u64 u64FromName(std::string alg);

#endif