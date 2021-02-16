#ifndef BITS_HPP
#define BITS_HPP

#include <random>
#include "misc/definitions.hpp"

/**
 * Seed the RNG deterministically
 */
void seedRand(int seed);

/**
 * Seed the RNG w/ time
 */
void timeSeedRand();

/**
 * Return a random real [0, 1)
 */
float randReal();

/**
 * Each bit in the output bitstring has a 50/50 chance of being 1 or 0.
 */
u64 randomBits();

/**
 * Needs to be called in order to initialize the cache for bitscanAll().
 */
void init_bits();

/**
 * A stack of u64 values, with a length limited to N.
 * 
 * In practice, only to be traversed upwards.
 * 
 * Returned by bitscanAll().
 */
class u64List
{
private:
  u64 data_[64];
  int head_;

public:
  /**
   * The motivation behind this class is that
   * arrays are by default initialized with garbage in C++.
   * 
   * Here we initialize to 0.
   */
  u64List()
  {
    head_ = 0;
    for (int i = 0; i < 64; i++)
    {
      data_[i] = 0;
    }
  }

  /**
   * Add a value to the end of the stack.
   */
  void Append(u64 value)
  {
    data_[head_++] = value;
  }

  /**
   * Clears the stack.
   */
  void Clear()
  {
    head_ = 0;
  }

  /**
   * Returns the size of the stack.
   */
  int len() const
  {
    return head_;
  }

  /**
   * Subscript get by index.
   */
  u64 operator[](int index) const
  {
    return data_[index];
  }
};

/**
 * Count number of 1 bits in a u64.
 */
int hadd(u64 x);

/**
 * Split a u64 into a list of singleton u64 values.
 */
void bitscanAll(u64 x, u64List &out_arr); // breaks into one-hots, hotspot, vectorize?

/**
 * Return the index of the LSB (rightmost, uppermost), from the least significant side
 */
inline int bitscanForward(u64 x) { return __builtin_ffsll(x) - 1; }

/**
 * Return the index of the MSB (leftmost, uppermost), from the most significant side
 */
inline int bitscanReverse(u64 x) { return 63 - __builtin_clzll(x); }

inline bool isValidSquare(Square s) { return s >= 0 && s < 64; }

// One-hot <=> int
// Needs to be converted to 64 bit if shifting
// 32 is too small and overflows.
inline u64 u64FromSquare(Square s)
{
  assert(isValidSquare(s));
  return ((u64)1) << s;
}

inline Square u64ToSquare(u64 x)
{
  assert(x != 0);
  return bitscanForward(x);
}

inline Row u64ToRow(u64 x) { return bitscanForward(x) / 8; }
inline Col u64ToCol(u64 x) { return bitscanForward(x) % 8; }
inline Row squareToRow(Square s) { return s / 8; }
inline Col squareToCol(Square s) { return s % 8; }

inline u64 u64FromPair(Row r, Col c) { return u64FromSquare(r * 8 + c); }
inline Square squareFromPair(Row r, Col c) { return r * 8 + c; }

#endif