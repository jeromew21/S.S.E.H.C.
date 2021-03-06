
#ifndef PERFT_HPP
#define PERFT_HPP

#include "game/chessboard.hpp"

// Perft is a test to ensure that the move generator is correct

namespace perft
{
  struct Counter
  {
    int nodes;
    int captures;
    int ep;
    int castles;
    int promotions;
    int checks;
    int checkmates;

    Counter()
    {
      nodes = 0;
      captures = 0;
      ep = 0;
      castles = 0;
      promotions = 0;
      checks = 0;
      checkmates = 0;
    }

    void Dump()
    {
      std::cout << "Nodes visited: " << nodes << "\n";
      std::cout << "Captures: " << captures << "\n";
      std::cout << "En passant: " << ep << "\n";
      std::cout << std::endl;
    }
  };

  //fills counter struct with values after perft test.
  void perft(Board &board_, int depth, Counter &counter);
  void perft_only_nodes(Board &board_, int depth);
} // namespace perft

#endif