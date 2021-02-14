
#ifndef PERFT_HPP
#define PERFT_HPP

#include "game/chessboard.hpp"

// Perft is a test to ensure that the move generator is correct

struct PerftCounter
{
    u64 nodes;
    u64 captures;
    u64 ep;
    u64 castles;
    u64 promotions;
    u64 checks;
    u64 checkmates;
    PerftCounter()
    {
        nodes = 0;
        captures = 0;
        ep = 0;
        castles = 0;
        promotions = 0;
        checks = 0;
        checkmates = 0;
    }
};

//fills counter struct with values after perft test.
void perft(Board &board, int depth, PerftCounter &counter);

#endif