#include <string>

#include "misc/definitions.hpp"
#include "chess/pieces.hpp"

int MATERIAL_TABLE[13] = {100, 350, 351, 525, 1000, 0}; // king is 0 to avoid potential bugs

int getMaterialValue(PieceType piece) {
  if (piece == EmptyPiece) return 0;
  return MATERIAL_TABLE[piece >> 1];
}