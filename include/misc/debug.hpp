#ifndef DEBUG_HPP
#define DEBUG_HPP

#include "definitions.hpp"

void debugLog(const std::string &text); // just a print statement
void dump64(u64 x);                     // debugging, prints as if it were a chessboard

// this is a test to ensure that the move generator is correct
// void perft(int depth, PerftCounter& pcounter);

#endif