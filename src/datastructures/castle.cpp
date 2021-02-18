#include "datastructures/board_state.hpp"

/**
 * Default constructor sets all to true at start.
 */
board::castle::Rights::Rights()
{
  data_[castle::white::long_] = 1;
  data_[castle::white::short_] = 1;

  data_[castle::black::long_] = 1;
  data_[castle::black::long_] = 1;
}

board::castle::Rights::Rights(int w_long, int w_short, int b_long, int b_short)
{
  assert(w_long == 0 || w_long == 1);
  assert(w_short == 0 || w_short == 1);
  assert(b_long == 0 || b_long == 1);
  assert(b_short == 0 || b_short == 1);

  data_[castle::white::long_] = w_long;
  data_[castle::white::short_] = w_short;

  data_[castle::black::long_] = b_long;
  data_[castle::black::short_] = b_short;
}

int board::castle::Rights::get(Color color, int direction) const
{
  assert(direction == castle::long_ || direction == castle::short_);

  return data_[direction + color];
}

void board::castle::Rights::Set(Color color, int direction, int value)
{
  assert(direction == castle::long_ || direction == castle::short_);
  assert(value == 0 || value == 1);

  data_[direction + color] = value;
}
