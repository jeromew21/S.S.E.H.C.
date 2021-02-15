#ifndef CHESSBOARD_HPP
#define CHESSBOARD_HPP

#include "misc/definitions.hpp"
#include "misc/bits.hpp"
#include "datastructures/board.hpp"
#include "game/pieces.hpp"
#include "uci/utils.hpp"

#include "misc/debug.hpp"

/**
 * We need to initialize and retrieve random hashes for each board feature.
 */
namespace zobrist
{
  /**
   * Populates the random hashes.
   */
  void init();

  /**
   * Gets a specific hash given a feature id.
   */
  u64 getHashFromId(int feature_id);

} // namespace zobrist

/**
 * Sometimes we care about the specific direction a ray goes 
 * for pin checking, or other things.
 */
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

/**
 * In order to genereate pseudo-legal (moves that are legal irregardless of check)
 * we need to first determine the rules of movement for a given piece.
 * 
 * This namespace provides functions that do just that.
 */
namespace move_maps
{
  /**
   * may be unecessary
   */
  void init();

  // pawns

  /**
   * Returns a bitboard of pawn captures at given location and occupancy map.
   */
  u64 pawnCaptures(u64 piece_location, Color color, u64 occupants);

  /**
   * Returns a bitboard of pawn captures at given location and occupancy map.
   */
  u64 pawnCaptures(Square piece_location, Color color, u64 occupants);

  /**
   * Returns a bitboard of pawn forward moves at given location and occupancy map.
   */
  u64 pawnMoves(u64 piece_location, Color color, u64 occupants);

  /**
   * Returns a bitboard of pawn forward moves at given location and occupancy map.
   */
  u64 pawnMoves(Square piece_location, Color color, u64 occupants);

  /**
   * Returns a bitboard of pawn double moves at given location and occupancy map.
   */
  u64 pawnDoubleMoves(u64 piece_location, Color color, u64 occupants);

  /**
   * Returns a bitboard of pawn double moves at given location and occupancy map.
   */
  u64 pawnDoubleMoves(Square piece_location, Color color, u64 occupants);

  // jumping pieces

  /**
   * Returns a bitboard of knight moves at given location and occupancy map.
   */
  u64 knightMoves(u64 piece_location, u64 occupants);

  /**
   * Returns a bitboard of knight moves at given location and occupancy map.
   */
  u64 knightMoves(Square piece_location, u64 occupants);

  /**
   * Returns a bitboard of king moves at given location and occupancy map.
   */
  u64 kingMoves(u64 piece_location, u64 occupants);

  /**
   * Returns a bitboard of king moves at given location and occupancy map.
   */
  u64 kingMoves(Square piece_location, u64 occupants);

  // sliding pieces

  // magic bitboards make rays deprecated for move generation
  // u64 bishopRay(u64 piece_location, int direction, u64 occupants);
  // u64 bishopRay(Square piece_location, int direction, u64 occupants);

  // u64 rookRay(u64 piece_location, int direction, u64 occupants);
  // u64 rookRay(Square piece_location, int direction, u64 occupants);

  /**
   * Returns a bitboard of bishop moves at given location and occupancy map.
   */
  u64 bishopMoves(u64 piece_location, u64 occupants);

  /**
   * Returns a bitboard of bishop moves at given location and occupancy map.
   */
  u64 bishopMoves(Square piece_location, u64 occupants);

  /**
   * Returns a bitboard of rook moves at given location and occupancy map.
   */
  u64 rookMoves(u64 piece_location, u64 occupants);

  /**
   * Returns a bitboard of rook moves at given location and occupancy map.
   */
  u64 rookMoves(Square piece_location, u64 occupants);

} // namespace move_maps

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

  /**
   * Have the attack and defend maps been generated yet?
   */
  bool _maps_generated;

  /**
   * for each square index, a bitboard list of attacked squares
   */
  std::array<u64, 64> attack_map_;

  /**
   * for each square index, a bitboard list of attacker squares
   */
  std::array<u64, 64> defend_map_;

  /** 
   * shortcut move generator if board is check
   */
  MoveList<256> produce_uncheck_moves_();

  // private methods that change hash accordingly

  void AddPiece_(PieceType piece, u64 location);
  void RemovePiece_(PieceType piece, u64 location);
  void SetEpSquare_(Square ep_square);
  void SetCastlingRights_(Color color, int direction, int value);
  void SetTurn_(Color turn);

  // move generation specific

  /** 
   * Update the attack and defend maps.
   */
  void GeneratePseudoLegal_();

public:
  /** 
   * List of all true legal moves in a position.
   */
  MoveList<256> legal_moves();

  /** 
   * capture moves only, generated for q-search.
   */
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

  /**
   * Sets the board to the classical starting position.
   */
  void Reset();

  void MakeMove(CMove mv);
  void UnmakeMove();

  void LoadPosition(PieceType piece_list[64], Color turn, int ep_square,
                    castle::Rights castling_rights, int fullmove, int halfmove);
  void LoadPosition(std::string fen); // loading from a FEN string

  /**
   * Prints information to the console.
   */
  void Dump();

  // default constructor
  Board();
};

#endif