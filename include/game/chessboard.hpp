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
} // namespace zobrist

/**
 * In order to generate pseudo-legal (moves that are legal irregardless of check)
 * we need to first determine the rules of movement for a given piece.
 * 
 * This namespace provides functions that do just that.
 */
namespace move_maps
{
  /**
   * needed to find magic numbers for hashing
   */
  void init();

  /**
   * same as is AttackedSliding but returns location of attackers.
   */
  u64 slidingAttackers(u64 occupancy_map, u64 subject, u64 rooks, u64 bishops);

  /**
   * same as is AttackedSliding but returns location of attackers.
   */
  u64 jumpingAttackers(u64 subject, Color subj_turn, u64 knights, u64 kings, u64 pawns);

  // pawns

  /**
   * Rank 0 for Black
   * 
   * Rank 7 for White
   */
  inline bool isPromotingRank(Square piece_location, Color color)
  {
    return (color == Black && squareToRow(piece_location) == 0) || (color == White && squareToRow(piece_location) == 7);
  }

  /**
   * Rank 6 for Black
   * 
   * Rank 1 for White
   */
  inline bool isStartingRank(Square piece_location, Color color)
  {
    return (color == Black && squareToRow(piece_location) == 6) || (color == White && squareToRow(piece_location) == 1);
  }

  /**
   * Returns the squares exactly one file adjacent to the current one. 
   * Really only used for en passant.
   */
  u64 oneFileAdjacent(Square piece_location);

  /**
   * Returns a bitboard of pawn captures at given location.
   */
  u64 pawnCaptures(Square piece_location, Color color);

  /**
   * Returns a bitboard of pawn forward moves at given location.
   * 
   * Always a quiet move.
   */
  u64 pawnMoves(Square piece_location, Color color);

  /**
   * Returns a bitboard of pawn double moves at given location.
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

  /**
   * Returns the single bishop ray from a particular direction
   */
  u64 bishopRay(Square piece_location, int direction);

  /**
   * Returns the single rook ray from a particular direction
   */
  u64 rookRay(Square piece_location, int direction);

  /**
   * Returns all four rays emanating from a location.
   */
  u64 rookRay(Square piece_location);

  /**
   * Returns all four rays emanating from a location.
   */
  u64 bishopRay(Square piece_location);
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
   * A simple array that stores, for each location, which piece resides at it.
   */
  PieceType piece_board_[64];

  /**
   * A bitboard that stores a mask of all the pieces on the board presently.
   */
  u64 occupancy_bitboard_;

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
   * The queenside starting location for rooks, depending on whether this is Chess960 or not.
   */
  u64 king_starting_location[2];

  /**
   * The queenside starting location for rooks, depending on whether this is Chess960 or not.
   */
  u64 queenside_rook_starting_location[2];

  /**
   * The kingside starting location for rooks, depending on whether this is Chess960 or not.
   */
  u64 kingside_rook_starting_location[2];

  /**
   * SEE helper function.
   * 
   * returns the least valuable piece of color color in mask.
   * Outputs the position of that piece in outposition.
   */
  PieceType least_valuable_piece_(u64 mask, Color color, u64 &out_position) const;

  /** 
   * shortcut move generator if board is check
   */
  MoveList<256> produce_uncheck_moves_() const;

  /** 
   * assuming not in check: verify that a move doesn't cause check
   * 
   * related to but not exactly the same as is_checking_move()
   */
  bool verify_move_safety_(CMove mv) const;

  /**
   * This will return a mask of pieces that attack any pieces masked by subjects,
   * of attacking_color.
   */
  u64 attackers_to_(u64 subjects, Color attacking_color) const;

  /**
   * Similar to attackers_to but only returns a boolean, not the locations of attacking pieces.
   * 
   * Returns true if any of the pieces masked by subjects are under attack by pieces of attacking_color 
   * 
   */
  bool is_attacked_(u64 subjects, Color attacking_color) const;

  /** 
   * Returns the piece at a particular location.
   */
  PieceType piece_at_(u64 location) const;

  /** 
   * Returns the piece at a particular location.
   */
  PieceType piece_at_(Square location) const;

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
  MoveList<256> legal_moves() const;

  /** 
   * capture moves only, generated for q-search.
   */
  MoveList<256> capture_moves() const;

  /**
   * Does this move put the opponent in check?
   */
  bool is_checking_move(CMove mv) const;

  /**
   * Static exchange evaluation
   */
  int see(CMove mv) const;

  /**
   * Given a move source square and dest square, create a move with the correct metadata.
   * 
   * This is used in the UCI interface when loading a sequence of moves.
   */
  CMove move_from_src_dest(Square src, Square dest, int promotion) const;
  CMove move_from_src_dest(Square src, Square dest) const;

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
   * Is the board currently in check?
   */
  bool is_check() const;

  /**
   * Outputs the FEN as a string.
   */
  std::string fen() const;

  /** 
   * if it isn't check, check for any legal moves
   */
  bool is_stalemate() const;

  /**
   * Returns true if for the current position it is checkmate (the opponent to who's move it is to play wins.)
   */
  bool is_checkmate() const;

  /**
   * Whether the game is continuing, a win for a particular side, or drawn.
   * 
   * The value is cached and stored, though this may not be needed.
   */
  board::Status status();

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
   * 
   * This effectively acts as the constructor for the board.
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