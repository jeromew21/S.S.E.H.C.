#ifndef BOARDDATA_STRUCTURES_HPP
#define BOARDDATA_STRUCTURES_HPP

#include <array>
#include <vector>
#include "game/cmove.hpp"
#include "game/pieces.hpp"

namespace board
{

  enum Status
  {
    WhiteWin,
    BlackWin,
    Draw,
    Playing,
    Stalemate,
    NotCalculated
  };

  namespace castle
  {
    /**
   * constant representing castling long (queenside)
   */
    const int long_ = 0;

    /**
   * constant representing castling short (kingside)
   */
    const int short_ = 2;

    /**
     * We encapsulate the castling values of the board in one class.
     * 
     * The value is true if the king hasn't moved, and for that direction, the rook hasn't moved,
     * and the player has not castled.
     * 
     * In other words, the value is set to true if castling is allowed in a given direction.
     * However the move generator may flag castling as illegal if there is a piece in the way, or it's check, etc.
     */
    class Rights
    {
    private:
      int data_[4];

    public:
      Rights();
      Rights(int w_long, int w_short, int b_long, int b_short);
      int get(Color color, int direction) const;
      void Set(Color color, int direction, int value);
    };
  } // namespace castle

  /**
   * Cached state elements of a board
   * 
   * This is the stuff that isn't incrementally updated on unmake.
   */
  struct State
  {
    int move_count;
    int ply_count;
    Color turn;
    int halfmove_counter;           // plies since last capture or pawn move
    int en_passant_square;          // square behind the pawn, or -1
    PieceType last_moved_piece;     // the piece type that last moved
    PieceType last_captured_piece;  // the piece type that was captured
    u64 hash;                       // the zobrist hash, saved for threefold testing
    bool is_check;                   // is the position a check
    bool has_repeated;               // three-fold repetition
    CMove last_move;                // the last move
    board::castle::Rights castling_rights; // rights to castle for both sides
    std::array<u64, 64> attack_map_;
    std::array<u64, 64> defend_map_;

    // default constructor
    State()
    {
      this->move_count = 0;
      this->ply_count = 0;
      this->halfmove_counter = 0;
      this->en_passant_square = -1;
      this->is_check = 0;
      this->has_repeated = 0;
      this->turn = White;
      this->last_moved_piece = piece::EmptyPiece;
      this->last_captured_piece = piece::EmptyPiece;
      this->last_move = CMove::NullMove();
      this->hash = 0;
    }

    //psuedoLegal?????
  };

  /**
 * A stack implemented with std::vector
 * 
 * Used to store past states of a chess board that are too heavy to be incrementally updated.
 */
  class StateStack
  {
  private:
    int head_; // length of stack
    std::vector<board::State> data_;

  public:
    StateStack() { head_ = 0; }

    /**
   * Return a reference to the top of the stack.
   * 
   * It's the position immediatly preceding the current one.
   */
    board::State &peek()
    {
      assert(head_ > 0);
      return data_.back();
    }

    /**
   * Return a reference to a particular index.
   */
    board::State &peek_at(int i)
    {
      assert(i >= 0 && i < head_);
      return data_[i];
    }

    bool can_pop() const { return head_ > 0; }
    int size() const { return head_; };

    void Pop()
    {
      assert(head_ > 0);
      data_.pop_back();
      head_--;
    }

    /**
   * Clears the stack.
   */
    void Clear()
    {
      head_ = 0;
      data_.clear();
    }

    /**
   * Should deference and push copy to stack
   */
    void Push(board::State &state)
    {
      data_.push_back(state);
      head_++;
    };
  };

} // namespace board

#endif
