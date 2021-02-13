#ifndef UTILS_HPP
#define UTILS_HPP

#include <string>
#include <vector>

#include "definitions.hpp"
#include "chess/cmove.hpp"

std::string moveToUCIAlgebraic(CMove &mv);

/* e4, f6, etc */
std::string squareName(u64 square);
std::string squareName(Square square);

Square squareFromString(std::string alg);

std::string pieceToString(PieceType piece);          //to unicode symbol
std::string pieceToStringAlph(PieceType piece);      //to uppercase character
std::string pieceToStringAlphLower(PieceType piece); //to lowercase character
std::string pieceToStringFen(PieceType piece);       //to upper or lower depending on color

PieceType pieceFromString(std::string val);

void sendToUciClient(const std::string &cmd);            //prints to stdout
std::vector<std::string> tokenize(std::string instring); //list of words

#endif