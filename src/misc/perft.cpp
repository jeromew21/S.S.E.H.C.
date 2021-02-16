#include "misc/perft.hpp"

void perft(Board &board, int depth, PerftCounter &counter)
{
    if (depth == 0)
        return;

    MoveList<256> moves = board.legal_moves();
    int s = moves.size();
    u64 occ = board.occupancy();
    for (int i = 0; i < s; i++)
    {
        CMove mv = moves[i];
        if (depth == 1)
        {
            counter.nodes += 1;
            if (mv.is_castle())
            {
                counter.castles += 1;
            }
            if (mv.is_promotion())
            {
                counter.promotions += 1;
            }
            if (board.is_checking_move(mv))
            {
                counter.checks += 1;
            }
            if (mv.dest() & occ)
            {
                counter.captures += 1;
            }
            if (mv.type_code() == move_type::EnPassant)
            {
                counter.ep += 1;
                counter.captures += 1;
            }
        }
        board.MakeMove(mv);
        if (depth == 1)
        {
            board::Status s = board.status();
            if (s == board::Status::WhiteWin || s == board::Status::BlackWin)
            {
                counter.checkmates += 1;
            }
        }
        perft(board, depth - 1, counter);
        board.UnmakeMove();
    }
}
