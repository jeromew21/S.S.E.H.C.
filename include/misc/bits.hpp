#ifndef BITS_HPP
#define BITS_HPP

#include <array>
#include "misc/definitions.hpp"

void seedRand(int seed); // seed rng
void timeSeedRand();     //seed w/ time
float randReal();        // between 0 and 1

u64 randomBits();

void init_bits();

int hadd(u64 x); // count number of bits, also a hotspot IIRC

// A stack of u64 values, with a length limited to N
template <int N>
struct u64Stack
{
  u64 data_[N];
  int length_;

  u64Stack()
  {
    length_ = 0;
    for (int i = 0; i < N; i++)
    {
      data_[i] = 0;
    }
  }

  void Append(u64 value)
  {
    data_[length_++] = value;
  }

  void Clear()
  {
    length_ = 0;
  }

  int len() const
  {
    return length_;
  }

  u64 operator[](int index) const
  {
    return data_[index];
  }
};

void bitscanAll(u64 x, u64Stack<64> &out_arr); // breaks into one-hots, hotspot, vectorize?

// LSB (rightmost, uppermost)
inline int bitscanForward(u64 x) { return __builtin_ffsll(x) - 1; }

// MSB (leftmost, uppermost)
inline int bitscanReverse(u64 x) { return 63 - __builtin_clzll(x); }

// One-hot <=> int
// Needs to be converted to 64 bit if shifting
// 32 is too small and overflows.
inline u64 u64FromSquare(Square s) { return (u64)1 << s; }
inline Square u64ToSquare(u64 x) { return bitscanForward(x); }

inline Row u64ToRow(u64 x) { return bitscanForward(x) / 8; }
inline Col u64ToCol(u64 x) { return bitscanForward(x) % 8; }
inline Row squareToRow(Square s) { return s / 8; }
inline Col squareToCol(Square s) { return s % 8; }

inline u64 u64FromPair(Row r, Col c) { return u64FromSquare(r * 8 + c); }
inline Square squareFromPair(Row r, Col c) { return r * 8 + c; }

#endif