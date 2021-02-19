#ifndef UCIINTERFACE_HPP
#define UCIINTERFACE_HPP

#include "uci/utils.hpp"

namespace uci
{
  void listen();

  /**
   * prints to stdout
   */
  void sendToUciClient(const std::string &cmd);
} // namespace uci

#endif