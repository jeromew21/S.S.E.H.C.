#ifndef UTILS_HPP
#define UTILS_HPP

#include <string>
#include <vector>

#include "definitions.hpp"
#include "chess/cmove.hpp"

std::string moveToUCIAlgebraic(CMove &mv);

std::string squareName(u64 square);
std::string squareName(Square square);
Square indexFromSquareName(std::string alg);

std::string pieceToString(PieceType piece);
std::string pieceToStringAlph(PieceType piece);
std::string pieceToStringAlphLower(PieceType piece);
std::string pieceToStringFen(PieceType piece);
PieceType pieceFromString(std::string val);

void sendToUciClient(const std::string &cmd);            // prints to stdout
std::vector<std::string> tokenize(std::string instring); // list of words

#endif