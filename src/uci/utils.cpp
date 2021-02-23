#include <iostream>
#include <sstream>
#include <iterator>

#include "uci/utils.hpp"

void sendToUciClient(const std::string &cmd)
{
  std::cout << cmd << std::endl;
}

std::vector<std::string> tokenize(std::string in_string)
{
  std::istringstream iss(in_string);
  std::vector<std::string> tokens;
  copy(std::istream_iterator<std::string>(iss),
       std::istream_iterator<std::string>(), back_inserter(tokens));
  return tokens;
}
