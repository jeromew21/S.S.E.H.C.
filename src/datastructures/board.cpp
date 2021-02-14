#include "datastructures/board.hpp"

namespace castle
{
  int long_ = 0;
  int short_ = 2;

  namespace white
  {
    int long_ = 0;
    int short_ = 2;
  } // namespace white

  namespace black
  {
    int long_ = 1;
    int short_ = 3;
  } // namespace black
} // namespace castle

castle::Rights::Rights()
{
  data_[white::short_] = 1;
  data_[white::long_] = 1;
  data_[black::short_] = 1;
  data_[black::long_] = 1;
}

castle::Rights::Rights(int w_long, int w_short, int b_long, int b_short)
{
  data_[white::short_] = w_short;
  data_[white::long_] = w_long;
  data_[black::short_] = b_short;
  data_[black::long_] = b_long;
}

int castle::Rights::get(Color color, int direction) const
{
  return data_[direction + color];
}

int castle::Rights::get(int r_id) const
{
  return data_[r_id];
}

void castle::Rights::SetTrue(Color color, int direction)
{
  data_[direction + color] = 1;
}

void castle::Rights::SetFalse(Color color, int direction)
{
  data_[direction + color] = 0;
}

void castle::Rights::SetTrue(int r_id)
{
  data_[r_id] = 1;
}

void castle::Rights::SetFalse(int r_id)
{
  data_[r_id] = 0;
}