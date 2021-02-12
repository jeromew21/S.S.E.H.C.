#ifndef UTILS_HPP
#define UTILS_HPP

#include <vector>
#include <string>

void sendToUciClient(const std::string &cmd); //prints to stdout
std::vector<std::string> tokenize(std::string instring); //list of words

#endif