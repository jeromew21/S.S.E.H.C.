#ifndef CHESSBOARD_HPP
#define CHESSBOARD_HPP

#include "misc/definitions.hpp"
#include "misc/bits.hpp"
#include "datastructures/board_state.hpp"
#include "datastructures/move_list.hpp"
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
   * Rank 0 for Black
   * 
   * Rank 7 for White
   */
  bool isPromotingRank(Square piece_location, Color color);

  /**
   * Rank 6 for Black
   * 
   * Rank 1 for White
   */
  bool isStartingRank(Square piece_location, Color color);

  /**
   * Returns a bitboard of pawn captures at given location.
   */
  u64 pawnCaptures(Square piece_location, Color color);

  /**
   * Returns a bitboard of pawn forward moves at given location and occupancy map.
   * 
   * Always a quiet move.
   */
  u64 pawnMoves(Square piece_location, Color color);

  /**
   * Returns a bitboard of pawn double moves at given location and occupancy map.
   * 
   * Always a quiet move.
   */
  u64 pawnDoubleMoves(Square piece_location, Color color);

  // jumping pieces

  /**
   * Returns a bitboard of knight moves at given location.
   */
  u64 knightMoves(Square piece_location);

  /**
   * Returns a bitboard of king moves at given location.
   */
  u64 kingMoves(Square piece_location);

  // sliding pieces

  // magic bitboards make rays deprecated for move generation
  // u64 bishopRay(u64 piece_location, int direction, u64 occupants);
  // u64 bishopRay(Square piece_location, int direction, u64 occupants);

  // u64 rookRay(u64 piece_location, int direction, u64 occupants);
  // u64 rookRay(Square piece_location, int direction, u64 occupants);

  /**
   * Returns a bitboard of bishop moves at given location and occupancy map.
   * 
   * Uses magic bitboards.
   */
  u64 bishopMoves(Square piece_location, u64 occupants);

  /**
   * Returns a bitboard of rook moves at given location and occupancy map.
   * 
   * Uses magic bitboards.
   */
  u64 rookMoves(Square piece_location, u64 occupants);

} // namespace move_maps

/**
 * This class encapsulates a game of chess and the elements that comprise it as such.
 */
class Board //put board in board.hpp?
{
private:
  /**
   * the bitboard of locations for each piece.
   */
  u64 bitboard_[12];

  /**
   * the current hash
   */
  u64 hash_;

  /**
   * the current board state
   */
  board::State state_;

  /**
   * the history of board states
   */
  board::StateStack state_stack_;

  /**
   * cached game status. may not be needed...
   */
  board::Status status_;

  /**
   * Have the attack and defend maps been generated yet?
   */
  bool maps_generated_;

  /** 
   * Update the attack and defend maps.
   */
  void GeneratePseudoLegal_();

  /** 
   * shortcut move generator if board is check
   */
  MoveList<256> produce_uncheck_moves_();

  /** 
   * capture moves only, generated for q-search.
   */
  MoveList<256> capture_moves_();

  /** 
   * assuming not in check: verify that a move doesn't cause check
   * 
   * related to but not exactly the same as is_checking_move()
   */
  bool verify_move_safety_(CMove mv);

  /** 
   * Returns the piece at a particular location.
   * 
   * Try to use this as seldom as possible, since with the bitboard strategy we try to think
   * in terms of pieces, not locations.
   */
  PieceType piece_at(u64 location) const;

  /** 
   * Add a piece at a location.
   */
  void AddPiece_(PieceType piece, u64 location);

  /** 
   * Remove a piece at a location.
   */
  void RemovePiece_(PieceType piece, u64 location);

  /** 
   * Set the en passant square.
   */
  void SetEpSquare_(Square ep_square);

  /** 
   * Set particular castling rights.
   */
  void SetCastlingRights_(Color color, int direction, int value);

  /** 
   * Set the turn.
   */
  void SetTurn_(Color turn);

public:
  /** 
   * List of all true legal moves in a position.
   */
  MoveList<256> legal_moves();

  /**
   * Whether the game is continuing, a win for a particular side, or drawn.
   * 
   * The value is cached and stored, though this may not be needed.
   */
  board::Status status();

  /**
   * Is the board currently in check?
   */
  bool is_check();

  /**
   * Does this move put the opponent in check?
   */
  bool is_checking_move(CMove mv);

  /**
   * Given a move source square and dest square, create a move with the correct metadata.
   * 
   * This is used in the UCI interface when loading a sequence of moves.
   */
  CMove move_from_src_dest(Square src, Square dest);

  /**
   * Which side is it to move?
   * 
   * Starts off as white by default.
   */
  Color turn() const;

  /**
   * Get the current hash.
   */
  u64 hash() const;

  /**
   * A bitboard mask of pieces for a particular color.
   */
  u64 occupancy(Color color) const;

  /**
   * A bitboard mask of all pieces.
   */
  u64 occupancy() const;

  /**
   * Outputs the FEN as a string.
   */
  std::string fen() const;

  // Public state-changing methods

  /**
   * Sets the board to the classical starting position.
   */
  void Reset();

  /**
   * Makes a move and changes state accordingly.s
   */
  void MakeMove(CMove mv);

  /**
   * Undoes the last move.
   */
  void UnmakeMove();

  /**
   * Loads a position from a list of pieces and complete list of state parameters.
   */
  void LoadPosition(PieceType piece_list[64], Color turn, int ep_square,
                    board::castle::Rights castling_rights, int fullmove, int halfmove);

  /**
   * Loads a position from a FEN string.
   */
  void LoadPosition(std::string fen);

  /**
   * Prints information to the console.
   */
  void Dump();

  /**
   * Default constructor. Loads the classical starting position.
   */
  Board();
};

#endif