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

  /**
   * DEPRECATED
   * 
   * given an occupancy map, subject location (can only contain 1 bit for now), and location of jumping (non-sliding) pieces,
   * check if the king is under attack by any of those pieces
   */
  bool isAttackedJumping(u64 subject, Color subj_turn, u64 knights, u64 kings, u64 pawns);
   
  /**
   * DEPRECATED
   * 
   * given an occupancy map, subject location (can only contain 1 bit for now), and location of sliding pieces,
   * check if the king is under attack by any of those sliding pieces
   */
  bool isAttackedSliding(u64 occupancy_map, u64 subject, u64 rooks, u64 bishops);

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
 * This class encapsulates a game of chess and the elements that comprise it as such.
 */
class Board //put board in board.hpp?
{
private:
  /**
   * the bitboard of locations for each piece.
   */
  u64 bitboard_[12];
  
  u64 occupancy_bitboard;

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
   * Update the attack and defend maps.
   */
  void GeneratePseudoLegal_();

  /** 
   * shortcut move generator if board is check
   */
  MoveList<256> produce_uncheck_moves_();

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
   * 
   * Try to use this as seldom as possible, since with the bitboard strategy we try to think
   * in terms of pieces, not locations.
   */
  PieceType piece_at_(u64 location) const;
  
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
  MoveList<256> legal_moves();

  /** 
   * capture moves only, generated for q-search.
   */
  MoveList<256> capture_moves() const;

  /**
   * Whether the game is continuing, a win for a particular side, or drawn.
   * 
   * The value is cached and stored, though this may not be needed.
   */
  board::Status status();

  
  /**
   * Does this move put the opponent in check?
   */
  bool is_checking_move(CMove mv) const;

  /**
   * Given a move source square and dest square, create a move with the correct metadata.
   * 
   * This is used in the UCI interface when loading a sequence of moves.
   */
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
  bool is_stalemate();

  /**
   * Returns true if for the current position it is checkmate (the opponent to who's move it is to play wins.)
   */
  bool is_checkmate();


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