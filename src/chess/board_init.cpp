#include "game/chessboard.hpp"


//checking row and column in bounds
bool inBounds(Row r, Col c)
{
  return (r >= 0 && r < 8) && (c >= 0 && c < 8);
}
