#include "chess/chessboard.hpp"

void Board::Board()
{
    LoadPosition()
}

void Board::MakeMove(CMove mv)
{
}

void Board::UnmakeMove()
{
}

GameStatus Board::status()
{
    //Retrieve cached value
    if (status_ != GameStatus::NotCalculated)
        return status_;
    return GameStatus::NotCalculated;
}

u64 Board::occupancy()
{
    return occupancy(White) | occupancy(Black);
}

u64 Board::occupancy(Color color)
{
    if (color == White)
    {
        return bitboard_[W_King] | bitboard_[W_Queen] | bitboard_[W_Knight] |
               bitboard_[W_Bishop] | bitboard_[W_Rook] | bitboard_[W_Pawn];
    }
    else
    {
        return bitboard_[B_King] | bitboard_[B_Queen] | bitboard_[B_Knight] |
               bitboard_[B_Bishop] | bitboard_[B_Rook] | bitboard_[B_Pawn];
    }
}