#include "datastructures/board_state.hpp"

board::castle::Rights::Rights()
{
  data_[castle::long_] = 1;
  data_[castle::short_] = 1;
  data_[castle::long_+1] = 1;
  data_[castle::short_+1] = 1;
}

board::castle::Rights::Rights(int w_long, int w_short, int b_long, int b_short)
{
  assert(w_long == 0 || w_long == 1);
  assert(w_short == 0 || w_short == 1);
  assert(b_long == 0 || b_long == 1);
  assert(b_short == 0 || b_short == 1);

  data_[castle::long_] = w_long;
  data_[castle::short_] = w_short;
  
  data_[castle::long_+1] = b_long;
  data_[castle::short_+1] = b_short;
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
