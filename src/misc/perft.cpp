#include "misc/perft.hpp"
#include "uci/strings.hpp"

void perft::perft(Board &board, int depth, perft::Counter &counter)
{
    if (depth == 0)
        return;

    MoveList<256> moves = board.legal_moves();
    u64 occ = board.occupancy();
    for (int i = 0; i < moves.size(); i++)
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
        board.Dump();
        std::cout << moveToUCIAlgebraic(mv);

        board.MakeMove(mv);

        if (depth == 1)
        {
            board::Status status = board.status();
            if (status == board::Status::WhiteWin || status == board::Status::BlackWin)
            {
                counter.checkmates += 1;
            }
        }
        perft(board, depth - 1, counter);
        board.UnmakeMove();
    }
}
