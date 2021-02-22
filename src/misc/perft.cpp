#include "misc/perft.hpp"
#include "uci/strings.hpp"

void perft::perft_only_nodes(Board &board_, int depth)
{
  if (depth == 0)
    return;

  MoveList<256> moves = board_.legal_moves();
  for (int i = 0; i < moves.size(); i++)
  {
    CMove mv = moves[i];
    board_.MakeMove(mv);
    perft_only_nodes(board_, depth - 1);
    board_.UnmakeMove();
  }
}

void perft::perft(Board &board_, int depth, perft::Counter &counter)
{
  if (depth == 0)
    return;

  MoveList<256> moves = board_.legal_moves();
  u64 occ = board_.occupancy();
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
      else
      {
        if (mv.is_promotion())
        {
          counter.promotions += 1;
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
    }
    board_.MakeMove(mv);

    if (depth == 1)
    {
      if (board_.is_check())
      {
        if (board_.is_checkmate())
          counter.checkmates += 1;
        counter.checks += 1;
      }
    }

    perft(board_, depth - 1, counter);
    board_.UnmakeMove();
  }
}
