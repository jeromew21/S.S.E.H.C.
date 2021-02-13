#include <string>

#include "definitions.hpp"
#include "chess/pieces.hpp"

const int MATERIAL_TABLE[13] = {0, 100, 350, 351, 525, 1000, 10000};

int getMaterial(PieceType piece) {
  return MATERIAL_TABLE[piece >> 1];
}