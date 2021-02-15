#ifndef BOARDDATA_STRUCTURES_HPP
#define BOARDDATA_STRUCTURES_HPP

// This file contains data structures pertaining to the Board class
// ie, legal move generation and move history

#include <array>
#include <vector>
#include "game/cmove.hpp"

enum GameStatus
{
    WhiteWin,
    BlackWin,
    Draw,
    Playing,
    Stalemate,
    NotCalculated
};

// Cached state elements of a board
// This is the stuff that isn't incrementally updated on unmake
// Castling is, for a particular direction (short or long),
// has that player not castled or not moved the king and not moved the respective rook
struct BoardState
{
    int move_number;    // full move, 50 move rule
    int ply;            // half move
    int en_passant_col; // if double push, then 0-7, else -1
    int w_long;         // would castling be legal
    int w_short;
    int b_long;
    int b_short;
    int is_check;            // is the position a check
    int has_repeated;        // three-fold repetition
    PieceType last_moved;    // I think this is the piece type that last moved
    PieceType last_captured; // might be a piece type
    CMove mv;                // the last move
    u64 hash;                // the zobrist hash, saved for threefold testing

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

    bool can_pop() { return index > 0; }

    int getindex() { return index; };

    void Pop()
    {
        assert(index > 0); //use can pop?
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

// Mutable list of moves with limited size
// N=256 is probably fine 100% of use cases
template <int N>
struct MoveVector
{
    CMove data_[N];
    int size_;

    // default constructor
    MoveVector() { size_ = 0; }

    // sets head pointer to 0
    void Clear() { size_ = 0; }

    void PushBack(CMove mv)
    {
        data_[size_] = mv;
        size_++;
    }

    void Erase(int index)
    {
        // shift items down
        memmove(data_ + index, data_ + index + 1, (N - index - 1) * sizeof(CMove));
        size_--;
    }

    void Insert(int index, CMove mv)
    {
        // shift items up
        memmove(data_ + index + 1, data_ + index, (N - index - 1) * sizeof(CMove));
        data_[index] = mv;
        size_++;
    }

    CMove back()
    {
        assert(size_ > 0);
        return data_[size_ - 1];
    }

    CMove pop_back()
    {
        assert(size_ > 0);
        CMove mv = back();
        size_--;
        return mv;
    }

    int size() { return size_; }
    int begin() { return 0; }; //do we need int end() for for each or does size() work?
    bool is_empty() { return size_ == 0; }

    CMove operator[](int index) { return data_[index]; }
};

#endif
