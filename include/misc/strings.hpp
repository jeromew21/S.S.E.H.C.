#ifndef STRINGS_HPP
#define STRINGS_HPP

#include <string>
#include "definitions.hpp"
#include "chess/board.hpp"
#include "chess/cmove.hpp"

// Ne5, e8Q, etc
std::string moveToUCIAlgebraic(CMove &mv);

// location <=> e4, f6, etc
std::string squareName(u64 square);
std::string squareName(Square square);
Square squareFromName(std::string alg);
u64 u64FromName(std::string alg);

std::string pieceToString(PieceType piece);          // to unicode symbol
std::string pieceToStringAlph(PieceType piece);      // to uppercase character
std::string pieceToStringAlphLower(PieceType piece); // to lowercase character

#endif