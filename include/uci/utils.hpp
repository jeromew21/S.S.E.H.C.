#ifndef UCIUTILS_HPP
#define UCIUTILS_HPP

#include <string>
#include <vector>

/**
 * prints to stdout
 */
void sendToUciClient(const std::string &cmd);

/**
 * sentence -> list of words
 */
std::vector<std::string> tokenize(std::string in_string);

/**
 * Sends info string if the command line verbose flag is set.
 */
void verbose_info(const std::string &text);

#endif