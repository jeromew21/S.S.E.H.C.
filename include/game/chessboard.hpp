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
  u64 getHashFromId();

} // namespace zobrist

namespace direction
{
  namespace rook
  {
    const int n = 0;
    const int e = 1;
    const int s = 2;
    const int w = 3;
  } // namespace rook
  namespace bishop
  {
    const int nw = 0;
    const int ne = 1;
    const int se = 2;
    const int sw = 3;
  } // namespace bishop
} // namespace direction

namespace move_cache
{
  /**
   * may be unecessary
   */
  void init();

  // pawns

  u64 pawnCaptures(u64 piece_location, Color color, u64 occupants);
  u64 pawnCaptures(Square piece_location, Color color, u64 occupants);

  u64 pawnMoves(u64 piece_location, Color color, u64 occupants);
  u64 pawnMoves(Square piece_location, Color color, u64 occupants);

  u64 pawnDoubleMoves(u64 piece_location, Color color, u64 occupants);
  u64 pawnDoubleMoves(Square piece_location, Color color, u64 occupants);

  // jumping pieces

  u64 knightMoves(u64 piece_location, u64 occupants);
  u64 knightMoves(Square piece_location, u64 occupants);

  u64 kingMoves(u64 piece_location, u64 occupants);
  u64 kingMoves(Square piece_location, u64 occupants);

  // sliding pieces

  // magic bitboards make rays deprecated for move generation
  // u64 bishopRay(u64 piece_location, int direction, u64 occupants);
  // u64 bishopRay(Square piece_location, int direction, u64 occupants);

  // u64 rookRay(u64 piece_location, int direction, u64 occupants);
  // u64 rookRay(Square piece_location, int direction, u64 occupants);

  u64 bishopMoves(u64 piece_location, u64 occupants);
  u64 bishopMoves(Square piece_location, u64 occupants);

  u64 rookMoves(u64 piece_location, u64 occupants);
  u64 rookMoves(Square piece_location, u64 occupants);

} // namespace move_cache

class Board //put board in board.hpp?
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
  std::array<u64, 64> defend_map_;

  // shortcut move generator if board is check
  MoveList<256> produce_uncheck_moves_();

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

  MoveList<256> legal_moves();
  MoveList<256> capture_moves();
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