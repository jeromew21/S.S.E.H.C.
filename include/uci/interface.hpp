#ifndef UCIINTERFACE_HPP
#define UCIINTERFACE_HPP

#include <atomic>
#include <thread>

#include "uci/strings.hpp"
#include "game/chessboard.hpp"

namespace uci
{
  /**
   * Implementing the UCI debug option.
   */
  void set_debug(bool value);
  
  /**
   * Kick off the engine.
   */
  void listen();

  /**
   * prints a command to stdout
   */
  void sendToUciClient(const std::string &cmd);

  class Interface
  {
  private:
    Board board_;
    CMove best_move_;
    std::thread search_thread_;
    std::thread timer_thread_;

  public:
    /** 
     * this will stop the search if set to true
     * 
     * we pass this into the AB search.
     */
    std::atomic<bool> not_thinking{true};

    /**
     * this will stop the timer that in turn stops the search
     * if there is a fixed time set.
     */
    std::atomic<bool> stop_timer{false};

    /**
     * Default constructor.
     */
    Interface();

    /**
     * Destructor; stops threads gracefully.
     */
    ~Interface();

    /**
     * This runs the AB search.
     */
    void Think();

    /**
     * This stops the think thread.
     */
    void StopThinking();

    /**
     * This stops the think thread after a certain number of ms.
     */
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