#ifndef BOARD_HPP
#define BOARD_HPP

#include "definitions.hpp"
#include "misc/bits.hpp"
#include "chess/cmove.hpp"

// initialize zobrist hashing scheme
void initializeZobrist();

// populate legal move caches
void populateMoveCache();

int distToClosestCorner(Row r, Col c); // manhattan distance

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
  //psuedoLegal?????
};

// not sure we actually need this
// enum GameStatus 
// {
//   WhiteWin,
//   BlackWin,
//   Draw,
//   Playing,
//   Stalemate,
//   NotCalculated
// };

class Board
{
private:
  u64 _zobristHash;

public:
  // a location mask for each piece type
  u64 bitboard[12];

  // MoveVector<256> legalMoves(); // calls generate
  // shortcut move generator if board is check
  // MoveVector<256> produceUncheckMoves();

  Color turn();
  u64 zobrist();
  bool is_check();
  CMove last_move();
  bool can_unmake();

  void Reset();
  void MakeMove(CMove mv);
  void UnmakeMove();

  // loading from complete specification of arguments
  void LoadPosition(PieceType *piecelist, Color turn, int epIndex, int wlong,
                    int wshort, int blong, int bshort, int halfmove0, int fullmove0);

  // loading from a FEN string
  void LoadPosition(std::string fen);

  // generate move from src->dest pair
  CMove move_from_src_dest(int src, int dest);

  // does a move produce check?
  bool is_checking_move(CMove mv);

  // mask of piece locations
  u64 occupancy();
  u64 occupancy(Color color);

  //output the FEN as a string
  std::string fen();

  // default constructor
  Board();
};

#endif