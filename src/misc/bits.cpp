#include <chrono>
#include "misc/bits.hpp"

std::uniform_real_distribution<double> unif(0, 1);
std::mt19937_64 rng;

void seedRand(int seed)
{
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

int hadd(u64 x)
{
  int count = 0;
  while(x) {
    count += (x & 1);
    x>>=1;
  }
  return count;
}

// TODO: throw SIMD at this
void bitscanAll(u64 x, std::array<u64, 64> &out_arr, int &out_size)
{
  out_size = 0;
  for (int k=0; k<64; k++)
  {
    u64 bs = (u64)1 << k;
    if (x & bs) {
      out_arr[out_size] = x & bs;
      out_size++;
    }
  }
}
