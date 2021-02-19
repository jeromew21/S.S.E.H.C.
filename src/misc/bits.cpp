#include <chrono>
#include "misc/bits.hpp"
#include "misc/debug.hpp"
#include "uci/utils.hpp"

std::uniform_real_distribution<double> unif(0, 1);
std::mt19937_64 rng;

const u64 m1 = 0x5555555555555555;  //binary: 0101...
const u64 m2 = 0x3333333333333333;  //binary: 00110011..
const u64 m4 = 0x0f0f0f0f0f0f0f0f;  //binary:  4 zeros,  4 ones ...
//const uint64_t m8 = 0x00ff00ff00ff00ff;  //binary:  8 zeros,  8 ones ...
//const uint64_t m16 = 0x0000ffff0000ffff; //binary: 16 zeros, 16 ones ...
//const uint64_t m32 = 0x00000000ffffffff; //binary: 32 zeros, 32 ones
const u64 h01 = 0x0101010101010101; //the sum of 256 to the power of 0,1,2,3...

u64 bitscan_cache[256][8][8];

void init_bits()
{
  verbose_info("initializing bitscan cache");
  for (int i = 0; i < 256; i++)
  {
    int bits = i & 255; //11000110
    for (int offset = 0; offset < 8; offset++)
    {
      for (int k = 0; k < 8; k++)
      {
        bitscan_cache[bits][offset][k] = 0;
      }
      int index = 0;
      for (int k = 0; k < 8; k++)
      {
        if ((bits >> k) & 1)
        {
          u64 value = ((u64) 1) << (offset*8 + k);
          assert (value != 0);
          bitscan_cache[bits][offset][index++] = value;
        }
      }
    }
  }
}

void seedRand(int seed)
{
  verbose_info("set random seed to " + std::to_string(seed));
  rng.seed(seed);
}

void timeSeedRand()
{
  uint64_t timeSeed = std::chrono::high_resolution_clock::now().time_since_epoch().count();
  std::seed_seq ss{uint32_t(timeSeed & 0xffffffff), uint32_t(timeSeed >> 32)};
  rng.seed(ss);
}

float randReal()
{
  return unif(rng);
}

u64 randomBits()
{
  u64 val = 0;
  u64 b = 1;
  for (int k = 0; k < 64; k++)
  {
    if (randReal() > 0.5)
      val |= b;
    b <<= 1;
  }
  return val;
}

//https://en.wikipedia.org/wiki/Hamming_weight
int hadd(u64 x)
{
  x -= (x >> 1) & m1;             //put count of each 2 bits into those 2 bits
  x = (x & m2) + ((x >> 2) & m2); //put count of each 4 bits into those 4 bits
  x = (x + (x >> 4)) & m4;        //put count of each 8 bits into those 8 bits
  return (x * h01) >> 56;         //returns left 8 bits of x + (x<<8) + (x<<16) + (x<<24) + ...
}

// previous implementation, for reference
// void bitscanAll(u64 x, std::array<u64, 64> &out_arr, int &out_size)
// {
//   out_size = 0;
//   while (x)
//   {
//     int k = bitscanForward(x);
//     u64 bs = (u64)1 << k;
//     out_arr[out_size++] = bs;
//     x &= ~bs;
//   }
// }

void bitscanAll(u64 x, u64List &out_arr)
{
  out_arr.Clear();
  for (int offset = 0; offset < 64; offset += 8)
  {
    int chunk = (x >> offset) & 255;
    if (chunk == 0)
      continue;

    u64 *cached = bitscan_cache[chunk][offset / 8]; //array of u64s
    for (int i = 0; i < 8 && cached[i] != 0; i++)
    {
      out_arr.Append(cached[i]);
    }
  }

  // old implementation should work
  // out_arr.Clear();
  // while (x) {
  //   int k = bitscanForward(x);
  //   u64 bs = (u64) 1 << k;
  //   out_arr.Append(bs);
  //   x &= ~bs;
  // }
}
