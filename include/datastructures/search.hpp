#ifndef AIDATASTRUCTURES_HPP
#define AIDATASTRUCTURES_HPP

#include "game/cmove.hpp"

/**
 * A tuple that contains a move and a corresponding score.
 */
struct MoveScoreTuple
{
  CMove mv;
  int score;
  MoveScoreTuple(CMove mv0, int score0) : mv(mv0), score(score0) {}
};

#endif