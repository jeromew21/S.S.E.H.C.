#ifndef BOARDDATA_STRUCTURES_HPP
#define BOARDDATA_STRUCTURES_HPP

/**
 * This file contains data structures pertaining to the Board class
 * ie, board state history and move history
 */

#include <array>
#include <vector>
#include "game/cmove.hpp"
#include "game/pieces.hpp"

enum GameStatus
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
  const int long_ = 0;
  const int short_ = 2;

  // This class abstracts all 4 pieces of info
  // pertaining to castling
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

// Cached state elements of a board
// This is the stuff that isn't incrementally updated on unmake
// Castling is, for a particular direction (short or long),
// has that player not castled or not moved the king and not moved the respective rook
struct BoardState
{
  int move_count;
  Color turn;
  int halfmove_counter;           // plies since last capture or pawn move
  int en_passant_square;          // square behind the pawn, or -1
  int is_check;                   // is the position a check
  int has_repeated;               // three-fold repetition
  PieceType last_moved_piece;     // the piece type that last moved
  PieceType last_captured_piece;  // the piece type that was captured
  u64 hash;                       // the zobrist hash, saved for threefold testing
  CMove last_move;                // the last move
  castle::Rights castling_rights; // rights to castle for both sides

  // default constructor
  BoardState()
  {
    this->move_count = 0;
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

// stack implemented with a std::vector
class BoardStateStack
{
private:
  int index; // length of stack
  std::vector<BoardState> data_;

public:
  BoardStateStack() { index = 0; }

  // peek at back
  BoardState &peek()
  {
    assert(index > 0);
    return data_.back();
  }

  // peek at index
  BoardState &peek_at(int i)
  {
    assert(i > 0 && i < index);
    return data_[i];
  }

  bool can_pop() const { return index > 0; }
  int getindex() const { return index; };

  void Pop()
  {
    assert(index > 0);
    data_.pop_back();
    index--;
  }

  void Clear()
  {
    index = 0;
    data_.clear();
  }

  // Should deference and push copy to stack
  void Push(BoardState &state)
  {
    data_.push_back(state);
    index++;
  };
};

/**
 * List of stored on stack with limited size.
 * 
 * N=256 is probably fine for 100% of use cases.
 * 
 * Returned by board methods Board::legal_moves() and others.
 */
template <int N>
class MoveList
{
private:
  CMove data_[N];
  int head_;

public:
  /** 
   * default constructor
   */
  MoveList() { head_ = 0; }

  /**
   * Sets head pointer to 0, effectively deleting the list.
   */
  void Clear() { head_ = 0; }

  /**
   * adds an element
   */
  void PushBack(CMove mv)
  {
    data_[head_++] = mv;
  }

  /**
   * Removes an item at index. Shifts other items down accordingly.
   */
  void Erase(int index)
  {
    assert(index < head_ && head_ > 0);
    memmove(data_ + index, data_ + index + 1, (N - index - 1) * sizeof(CMove));
    head_--;
  }

  /**
   * Insert an item at index. Shifts other items up accordingly.
   */
  void Insert(int index, CMove mv)
  {
    assert(index < head_ && head_ < N);
    memmove(data_ + index + 1, data_ + index, (N - index - 1) * sizeof(CMove));
    data_[index] = mv;
    head_++;
  }

  CMove back()
  {
    assert(head_ > 0);
    return data_[head_ - 1];
  }

  CMove pop_back()
  {
    assert(head_ > 0);
    CMove mv = back();
    head_--;
    return mv;
  }

  int size() const { return head_; }
  int begin() const { return 0; };
  bool is_empty() const { return head_ == 0; }

  CMove operator[](int index) const { return data_[index]; }
};

#endif
