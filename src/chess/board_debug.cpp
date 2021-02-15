#include <iostream>
#include "game/chessboard.hpp"
#include "misc/debug.hpp"

void Board::Dump() {
  print_("occupancy");
  dump64(occupancy());
}