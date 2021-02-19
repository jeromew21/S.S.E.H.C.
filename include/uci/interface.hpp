#ifndef UCIINTERFACE_HPP
#define UCIINTERFACE_HPP

#include <atomic>
#include <thread>

#include "game/chessboard.hpp"

namespace uci
{
  void listen();

  /**
   * prints to stdout
   */
  void sendToUciClient(const std::string &cmd);

  class Interface
  {
  private:
    bool debug_;

  public:
    /** 
     * this will stop the search
     */
    std::atomic<bool> not_thinking{true};

    /**
     * this will stop the timer that in turn stops the search
     * 
     * if there is a fixed time set.
     */
    std::atomic<bool> stop_timer{false};
    
    CMove bestMove;
    Board board;
    std::thread search_thread;
    std::thread timer_thread;

    Interface();
    
    /**
     * Destructor; stops threads gracefully
     */
    ~Interface();

    void Think();
    void StopThinking();
    void DelayStop(int msecs);

    /**
     * Launches the search thread either with a fixed time in milliseconds or infinitely long.
     */
    void StartThinking(bool inf, int msecs);

    /**
     * Recieve a command from the client.
     */
    void RecieveCommand(std::string cmd);
  };
} // namespace uci

#endif