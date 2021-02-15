#include <string>

#include "misc/definitions.hpp"
#include "game/pieces.hpp"

int MATERIAL_TABLE[13] = {100, 350, 350, 525, 1000, 0}; // king is 0 to avoid potential bugs

int getMaterialValue(PieceType piece) {
  if (piece == piece::EmptyPiece) return 0;
  return MATERIAL_TABLE[piece >> 1];
}