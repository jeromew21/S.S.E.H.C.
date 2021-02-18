#ifndef PIECES_HPP
#define PIECES_HPP

#include "misc/definitions.hpp"

namespace piece
{
  namespace colorless
  {
    const int pawn = 0;
    const int knight = 1;
    const int bishop = 2;
    const int rook = 3;
    const int queen = 4;
    const int king = 5;
  }

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

  inline int to_colorless(PieceType piece) { return piece >> 1; }

  inline bool is_empty(PieceType piece) { return piece == EmptyPiece; }
  inline bool is_pawn(PieceType piece) { return to_colorless(piece) == colorless::pawn; }
  inline bool is_king(PieceType piece) { return to_colorless(piece) == colorless::king; }
  inline bool is_knight(PieceType piece) { return to_colorless(piece) == colorless::knight; }
  inline bool is_bishop(PieceType piece) { return to_colorless(piece) == colorless::bishop; }
  inline bool is_rook(PieceType piece) { return to_colorless(piece) == colorless::rook; }
  inline bool is_queen(PieceType piece) { return to_colorless(piece) == colorless::queen; }

  inline PieceType flip(PieceType piece)
  {
    assert(!is_empty(piece));
    return piece ^ 1;
  }

  inline PieceType get_pawn(Color color) { return colorless::pawn + color; }
  inline PieceType get_bishop(Color color) { return colorless::bishop + color; }
  inline PieceType get_rook(Color color) { return colorless::rook + color; }
  inline PieceType get_queen(Color color) { return colorless::queen + color; }
  inline PieceType get_king(Color color) { return colorless::king + color; }
} // namespace piece

/**
 * Returns 0 if color is 1 and 1 if color is 0
 */
inline Color oppositeColor(Color color) { return color ^ 1; }

/**
 * Returns the color (1 or 0) of a piece.
 */
inline Color colorOf(PieceType piece) { return piece % 2; }

int getMaterialValue(PieceType piece);

#endif
