#include <array>

#include "ai.hpp"

struct KillerTable
{
    std::array<std::array<Move_, 2>, 32> arr;

    void clear()
    {
        for (int k = 0; k < 32; k++)
        {
            arr[k][1] = Move_::NullMove();
            arr[k][0] = Move_::NullMove();
        }
    }

    bool contains(Move_ mv, int ply)
    {
        return arr[ply][0] == mv || arr[ply][1] == mv;
    }

    void insert(Move_ mv, int ply)
    {
        for (int i = 0; i < 2; i++)
        {
            if (arr[ply][i].is_null())
            {
                arr[ply][i] = mv;
                return;
            }
            else if (arr[ply][i] == mv)
                return;
        }
        // otherwise replace
        arr[ply][0] = arr[ply][1];
        arr[ply][1] = mv;
    }
};

struct HistoryTable
{
    std::array<std::array<int, 64>, 64> arr[2]; // to-from cutoff count

    void clear()
    {
        for (int i = 0; i < 64; i++)
        {
            for (int k = 0; k < 64; k++)
            {
                arr[White][i][k] = 0;
                arr[Black][i][k] = 0;
            }
        }
    }

    int get(Move_ mv, Color side)
    {
        return arr[side][mv.src_square()][mv.dest_square()];
    }

    void insert(Move_ mv, Color side, int depth)
    {
        arr[side][mv.src_square()][mv.dest_square()] += depth * depth;
    }
};

struct CounterMoveTable
{
    std::array<std::array<Move_, 64>, 64> arr[2];

    void clear()
    {
        for (int i = 0; i < 64; i++)
        {
            for (int k = 0; k < 64; k++)
            {
                arr[White][i][k] = Move_();
            }
        }
    }

    bool contains(Move_ prev, Move_ mv, Color side)
    {
        return arr[side][prev.src_square()][prev.dest_square()] == mv;
    }

    void insert(Color side, Move_ prev, Move_ counter)
    {
        arr[side][prev.src_square()][prev.dest_square()] = counter;
    }
};