#include <iostream>
#include "misc/debug.hpp"

void print_(const std::string &text)
{
  std::cout << text << std::endl;
}

void dump64(u64 x)
{
  int arr[64];
  int i(0);
  while (i < 64)
  {
    arr[i] = x & 1;
    x = x >> 1;
    i++;
  }
  for (int i = 7; i >= 0; i--)
  {
    for (int k = 0; k < 8; k++)
    {
      std::cout << arr[i * 8 + k];
    }
    std::cout << "\n";
  }
}
