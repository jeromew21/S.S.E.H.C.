#ifndef PIECES_HPP
#define PIECES_HPP

#include "misc/definitions.hpp"

namespace piece
{
  namespace white
  {
    const PieceType pawn = (0 << 1);   //0
    const PieceType knight = (1 << 1); //2
    const PieceType bishop = (2 << 1); //4
    const PieceType rook = (3 << 1);   //6
    const PieceType queen = (4 << 1);  //8
    const PieceType king = (5 << 1);   //10
  }                                    // namespace white
  namespace black
  {
    const PieceType pawn = (0 << 1) + 1;   //1
    const PieceType knight = (1 << 1) + 1; //3
    const PieceType bishop = (2 << 1) + 1; //5
    const PieceType rook = (3 << 1) + 1;   //7
    const PieceType queen = (4 << 1) + 1;  //9
    const PieceType king = (5 << 1) + 1;   //11
  }                                        // namespace black
  const PieceType EmptyPiece = -1;

  inline bool is_pawn(PieceType piece) { return piece <= 1; }
} // namespace piece

int getMaterialValue(PieceType piece);

inline Color oppositeColor(Color color) { return 1 & (~color); }

inline Color colorOf(PieceType piece) { return piece % 2; }

#endif
