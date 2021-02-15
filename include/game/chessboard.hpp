#ifndef CHESSBOARD_HPP
#define CHESSBOARD_HPP

#include "misc/definitions.hpp"
#include "misc/bits.hpp"
#include "datastructures/board.hpp"
#include "game/pieces.hpp"
#include "uci/utils.hpp"

#include "misc/debug.hpp"

namespace zobrist
{
  // populate initial zobrist hashes
  void init();
} // namespace zobrist

namespace move_cache
{
  // populate legal move caches
  void init();
} // namespace move_cache

class Board
{
private:
  // Internal fields

  u64 bitboard_[12];
  u64 hash_;
  BoardState state_;
  BoardStateStack state_stack_;
  GameStatus status_;

  // Attack and Defend maps

  bool _maps_generated;
  // for each square index, a bitboard list of attacked squares
  std::array<u64, 64> attack_map_;

  // for each square index, a bitboard list of attacker squares
  std::array<u64, 64> defend_map;

  // shortcut move generator if board is check
  MoveVector<256> produce_uncheck_moves_();

  // private methods that change hash accordingly

  void AddPiece_(PieceType piece, u64 location);
  void RemovePiece_(PieceType piece, u64 location);
  void SetEpSquare_(Square ep_square);
  void SetCastlingRights_(Color color, int direction, int value);
  void SetTurn_(Color turn);

  // move generation specific

  // fill attack/defend maps
  void GeneratePseudoLegal_(); 

public:
  // non-const getters

  MoveVector<256> legal_moves();
  GameStatus status();

  // getters that might be const depending on implementation

  bool is_check();
  bool is_checking_move(CMove mv);
  CMove move_from_src_dest(Square src, Square dest);

  // const getters

  Color get_turn() const;
  u64 get_hash() const;
  CMove last_move() const;
  bool can_unmake() const;
  u64 occupancy() const; // mask of piece locations
  u64 occupancy(Color color) const;
  std::string fen() const; // output the FEN as a string

  // Public state-changing methods

  void Reset();
  void MakeMove(CMove mv);
  void UnmakeMove();
  void LoadPosition(PieceType piece_list[64], Color turn, int ep_square,
                    castle::Rights castling_rights, int fullmove, int halfmove);
  void LoadPosition(std::string fen); // loading from a FEN string

  //debug
  void Dump();

  // default constructor
  Board();
};

#endif