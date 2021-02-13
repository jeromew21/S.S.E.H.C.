#ifndef FEN_HPP
#define FEN_HPP

#include <string>
#include "definitions.hpp"

std::string pieceToStringFen(PieceType piece); // to upper or lower depending on color
PieceType pieceFromStringFen(std::string val); // from uppercase or lowercase

#endif