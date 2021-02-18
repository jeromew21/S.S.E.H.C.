#include <iostream>
#include <chrono>

#include "game/chessboard.hpp"
#include "uci/strings.hpp"
#include "misc/perft.hpp"

bool verbose = true;

// test move generator
void testPerft()
{
  Board chessboard;
  perft::Counter counter;
  perft::perft(chessboard, 2, counter);
  counter.Dump();
}

void verbose_info(const std::string &text)
{
  if (verbose)
    std::cout << "info string " << text << std::endl;
}

void init()
{
  seedRand(6969);
  init_bits();
  move_maps::init();
}

int main()
{
  verbose_info("initializing engine");
  init();

  // testPerft();
  Board chessboard;


  auto lm = chessboard.legal_moves();
  for (int i = 0; i < lm.size(); i++) {
    chessboard.MakeMove(lm[i]);
    auto lm2 = chessboard.legal_moves();
    for (int k = 0; k < lm2.size(); k++) {
      chessboard.MakeMove(lm2[i]);
      chessboard.Dump();
      chessboard.UnmakeMove();
    }
    chessboard.UnmakeMove();
  }

  // testPerft();

  return 0;
}
