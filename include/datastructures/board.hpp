#ifndef BOARDDATASTRUCTURES_HPP
#define BOARDDATASTRUCTURES_HPP

#include <array>
#include <vector>
#include "chess/cmove.hpp"

// Cached state elements of a board
// This is the stuff that isn't incrementally updated on unmake
struct BoardState
{
    int move_number;    // full move
    int ply;            // half move
    int en_passant_col; // if double push, then 0-7, else -1
    int w_long;         // would castling be legal
    int w_short;
    int b_long;
    int b_short;
    PieceType last_moved;    // I think this is the piece type that last moved
    PieceType last_captured; // might be a piece type
    int has_repeated;        // three-fold repetition

    CMove mv; // the last move
    u64 hash; // the zobrist hash,
    // since hash is inc updated on unmake, not sure it has to be here...

    //psuedoLegal?????
};

class BoardStateStack
{
private:
    int _index; // length of stack
    std::vector<BoardState> _data;

public:
    BoardStateStack() { _index = 0; }

    // peek at back
    BoardState &peek()
    {
        assert(_index > 0);
        return _data.back();
    }

    // peek at index
    BoardState &peek_at(int i)
    {
        assert(i > 0 && i < _index);
        return _data[i];
    }

    bool can_pop() { return _index > 0; }

    int get_index() { return _index; };

    void Pop()
    {
        assert(_index > 0);
        _data.pop_back();
        _index--;
    }

    void Clear()
    {
        _index = 0;
        _data.clear();
    }

    // Should deference and push copy to stack
    void Push(BoardState &state)
    {
        _data.push_back(state);
        _index++;
    };
};

// Mutable list of moves
template <int N>
struct MoveVector
{
    CMove data[N];
    int _size;

    // default constructor
    MoveVector() { _size = 0; }

    // sets head pointer to 0
    void Clear() { _size = 0; }

    void PushBack(CMove mv)
    {
        data[_size] = mv;
        _size++;
    }

    void Erase(int index)
    {
        // move items down
        // 0, 1, 2, 3...10
        memmove(data + index, data + index + 1, (N - index - 1) * sizeof(CMove));
        _size--;
    }

    void Insert(int index, CMove mv)
    {
        // move items up
        // 0, 1, 2, 3,...10
        memmove(data + index + 1, data + index, (N - index - 1) * sizeof(CMove));
        data[index] = mv;
        _size++;
    }

    CMove back()
    {
        assert(_size > 0);
        return data[_size - 1];
    }

    CMove pop_back()
    {
        assert(_size > 0);
        CMove mv = back();
        _size--;
        return mv;
    }

    int size() { return _size; }
    int begin() { return 0; };
    bool is_empty() { return _size == 0; }

    CMove operator[](int index) { return data[index]; }
};

#endif
