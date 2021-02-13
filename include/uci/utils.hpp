#ifndef UTILS_HPP
#define UTILS_HPP

#include <string>
#include <vector>

void sendToUciClient(const std::string &cmd);            // prints to stdout
std::vector<std::string> tokenize(std::string instring); // sentence -> list of words

#endif