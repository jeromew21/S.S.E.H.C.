#ifndef CHESSBOARD_HPP
#define CHESSBOARD_HPP

#include "definitions.hpp"
#include "misc/bits.hpp"
#include "chess/cmove.hpp"
#include "datastructures/board.hpp"

// initialize zobrist hashing scheme
void initializeZobrist();

// populate legal move caches
void populateMoveCache();

int distToClosestCorner(Row r, Col c); // manhattan distance

class Board
{
private:
  u64 bitboard_[12];
  u64 hash_;

  // shortcut move generator if board is check
  MoveVector<256> produce_uncheck_moves_();

public:
  MoveVector<256> legal_moves();

  Color turn();
  u64 zobrist();
  bool is_check();
  bool can_unmake();
  CMove last_move();
  GameStatus status();


  void Reset();
  void MakeMove(CMove mv);
  void UnmakeMove();

  // loading from complete specification of arguments
  void LoadPosition(PieceType *piece_list, Color turn, int ep_index, int w_long,
                    int w_short, int b_long, int b_short,  int fullmove, int halfmove);

  // loading from a FEN string
  void LoadPosition(std::string fen);

  // generate move from src->dest pair
  CMove move_from_src_dest(Square src, Square dest);

  // does a move produce check?
  bool is_checking_move(CMove mv);

  // mask of piece locations
  u64 occupancy();
  u64 occupancy(Color color);

  // output the FEN as a string
  std::string fen();

  // default constructor
  Board();
};

#endif