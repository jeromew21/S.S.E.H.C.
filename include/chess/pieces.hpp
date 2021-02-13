#ifndef PIECES_HPP
#define PIECES_HPP

#include "definitions.hpp"

const PieceType Empty = -1;

const PieceType W_Pawn = (0 << 1); //0
const PieceType W_Knight = (1 << 1); //2
const PieceType W_Bishop = (2 << 1); //4
const PieceType W_Rook = (3 << 1); //6
const PieceType W_Queen = (4 << 1); //8
const PieceType W_King = (5 << 1); //10

const PieceType B_Pawn = (0 << 1) + 1;  //1
const PieceType B_Knight = (1 << 1) + 1; //3
const PieceType B_Bishop = (2 << 1) + 1; //5
const PieceType B_Rook = (3 << 1) + 1; //7
const PieceType B_Queen = (4 << 1) + 1; //9
const PieceType B_King = (5 << 1) + 1; //11

int getMaterialValue(PieceType piece);

inline Color oppositeColor(Color color) { return 1 & (~color); }

inline Color colorOf(PieceType piece) { return piece % 2; }

#endif
