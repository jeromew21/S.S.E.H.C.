#ifndef MOVELIST_HPP
#define MOVELIST_HPP

#include "misc/debug.hpp"

/**
 * List of moves, stored on stack with limited size.
 * 
 * N=256 is probably fine for 100% of use cases and definitely overkill.
 * 
 * Returned by board methods Board::legal_moves() and others.
 * 
 * Attempts to copy the std::vector API for clarity's sake.
 */
template <int N>
class MoveList
{
private:
  Move_ data_[N];
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
  void PushBack(Move_ mv)
  {
    data_[head_++] = mv;
  }

  /**
   * Removes an item at index. Shifts other items down accordingly.
   */
  void Erase(int index)
  {
    assert(index < head_ && head_ > 0);
    memmove(data_ + index, data_ + index + 1, (N - index - 1) * sizeof(Move_));
    head_--;
  }

  /**
   * Insert an item at index. Shifts other items up accordingly.
   */
  void Insert(int index, Move_ mv)
  {
    assert(index < head_ && head_ < N);
    memmove(data_ + index + 1, data_ + index, (N - index - 1) * sizeof(Move_));
    data_[index] = mv;
    head_++;
  }

  /**
   * Return the last item in the list.
   */
  Move_ back()
  {
    assert(head_ > 0);
    return data_[head_ - 1];
  }

  /**
   * Delete and return last item in the list.
   */
  Move_ pop_back()
  {
    assert(head_ > 0);
    Move_ mv = back();
    head_--;
    return mv;
  }

  int size() const { return head_; }
  int begin() const { return 0; };
  bool is_empty() const { return head_ == 0; }

  Move_ operator[](int index) const { return data_[index]; }
};

#endif
