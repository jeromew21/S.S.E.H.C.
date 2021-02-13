#ifndef BITS_HPP
#define BITS_HPP

#include <array>
#include "definitions.hpp"

void seedRand(int seed); //seed
float randReal(); //between 0 and 1

int hadd(u64 x);

void bitscanAll(u64 x, std::array<u64, 64> &outarr, int &outsize); //breaks into one-hots, hotspot, vectorize?

// LSB (rightmost, uppermost)
inline int bitscanForward(u64 x) { return __builtin_ffsll(x) - 1; }

// MSB (leftmost, uppermost)
inline int bitscanReverse(u64 x) { return 63 - __builtin_clzll(x); }

inline u64 u64FromSquare(Square i) { return (1UL) << i; }
inline Square u64ToSquare(u64 space) { return bitscanForward(space); }

inline int max(int i1, int i2) { return i1 > i2 ? i2 : i1; }
inline int min(int i1, int i2) { return i1 < i2 ? i1 : i2; }

inline bool inBounds(int y, int x) { return (y >= 0 && y < 8) && (x >= 0 && x < 8); }

inline Row u64ToRow(u64 space) { return bitscanForward(space) / 8; }
inline Col u64ToCol(u64 space) { return bitscanForward(space) % 8; }
inline Row squareToRow(Square s) { return s / 8; }
inline Col squareToCol(Square s) { return s % 8; }

inline u64 u64FromPair(Row r, Col c) { return u64FromSquare(r * 8 + c); }
inline Square squareFromPair(Row r, Col c) { return r * 8 + c; }

#endif