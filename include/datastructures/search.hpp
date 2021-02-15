#ifndef AIDATASTRUCTURES_HPP
#define AIDATASTRUCTURES_HPP

#include "game/cmove.hpp"

// This file contains data structures pertaining to AI
// hash tables, etc

struct MoveScoreTuple {
  CMove mv;
  int score;
  MoveScoreTuple(CMove mv0, int score0) : mv(mv0), score(score0) {}
};

#endif