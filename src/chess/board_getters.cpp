#include "game/chessboard.hpp"

board::Status Board::status()
{
  // Retrieve cached value
  if (status_ != board::Status::NotCalculated)
    return status_;

  // Calculate and store value
  if (state_.has_repeated || state_.halfmove_counter >= 50)
  {
    status_ = board::Status::Draw;
  }
  else if (is_check())
  {
    if (is_checkmate())
    {
      if (turn() == White)
        status_ = board::Status::BlackWin;
      else
        status_ = board::Status::WhiteWin;
    }
    else
    {
      // check, but not checkmate: must be still playing
      status_ = board::Status::Playing;
    }
  }
  else if (is_stalemate())
  {
    status_ = board::Status::Stalemate;
  }
  else
  {
    status_ = board::Status::Playing;
  }

  return status_;
}

Color Board::turn() const
{
  return state_.turn;
}

bool Board::is_check() const
{
  return state_.is_check;
}

u64 Board::hash() const
{
  return state_.hash;
}

u64 Board::occupancy() const
{
  assert(!(occupancy(White) & occupancy(Black)));
  return occupancy_bitboard_;
}

u64 Board::occupancy(Color color) const
{
  assert(color == White || color == Black);

  if (color == White)
    return bitboard_[piece::white::king] | bitboard_[piece::white::queen] | bitboard_[piece::white::bishop] |
           bitboard_[piece::white::pawn] | bitboard_[piece::white::rook] | bitboard_[piece::white::knight];

  return bitboard_[piece::black::king] | bitboard_[piece::black::queen] | bitboard_[piece::black::bishop] |
         bitboard_[piece::black::pawn] | bitboard_[piece::black::rook] | bitboard_[piece::black::knight];
}

CMove Board::move_from_src_dest(Square src, Square dest) const
{
  return move_from_src_dest(src, dest, piece::EmptyPiece);
}

CMove Board::last_move() const
{
  return state_.last_move;
}

u64 Board::get_bitboard(PieceType piece_) const
{
  return bitboard_[piece_];
}

/** 
 * Takes in a colorless piece as promotion
 */
CMove Board::move_from_src_dest(Square src, Square dest, int promotion) const
{
  // Validate move...
  MoveList<256> mv_list = legal_moves();
  assert(mv_list.size() > 0);

  for (int i = 0; i < mv_list.size(); i++)
  {
    CMove mv = mv_list[i];
    if (mv.src_square() == src && mv.dest_square() == dest)
    {
      if (mv.is_promotion())
      {
        if (piece::to_colorless(mv.promoting_piece(White)) == promotion)
        {
          return mv;
        }
        // otherwise continue
      }
      else
      {
        return mv;
      }
    }
  }
  assert(false);
  return CMove::NullMove(); // if given a wrong move then just return null move
}

/**
 * used in uncheck and checking for castling
 */
u64 Board::attackers_to_(u64 subjects, Color attacking_color) const
{
  assert(subjects != 0);

  u64List subj_bitscan;
  bitscanAll(subjects, subj_bitscan);
  const u64 occ = occupancy();
  const u64 rooks = bitboard_[piece::get_rook(attacking_color)] | bitboard_[piece::get_queen(attacking_color)];
  const u64 bishops = bitboard_[piece::get_bishop(attacking_color)] | bitboard_[piece::get_queen(attacking_color)];
  const u64 knights = bitboard_[piece::get_knight(attacking_color)];
  const u64 kings = bitboard_[piece::get_king(attacking_color)];
  const u64 pawns = bitboard_[piece::get_pawn(attacking_color)];

  u64 attacker_map = 0;

  for (int i = 0; i < subj_bitscan.len(); i++)
  {
    u64 subj_loc = subj_bitscan[i];
    u64 sliders = move_maps::slidingAttackers(occ | subj_loc, subj_loc, rooks, bishops);
    u64 jumpers = move_maps::jumpingAttackers(subj_loc, attacking_color, knights, kings, pawns);
    attacker_map |= sliders | jumpers;
  }
  return attacker_map;
}

/** 
 * This is technically redundant with attackers_to_ but we get a theoretical speedup by returning early
 * if there are multiple subjects.
 */
bool Board::is_attacked_(u64 subjects, Color attacking_color) const
{
  assert(subjects != 0);

  u64List subj_bitscan;
  bitscanAll(subjects, subj_bitscan);
  u64 occ = occupancy();
  u64 rooks = bitboard_[piece::get_rook(attacking_color)] | bitboard_[piece::get_queen(attacking_color)];
  u64 bishops = bitboard_[piece::get_bishop(attacking_color)] | bitboard_[piece::get_queen(attacking_color)];
  u64 knights = bitboard_[piece::get_knight(attacking_color)];
  u64 kings = bitboard_[piece::get_king(attacking_color)];
  u64 pawns = bitboard_[piece::get_pawn(attacking_color)];

  for (int i = 0; i < subj_bitscan.len(); i++)
  {
    u64 subj_loc = subj_bitscan[i];
    u64 sliders = move_maps::slidingAttackers(occ | subj_loc, subj_loc, rooks, bishops);
    if (sliders)
      return true;
    u64 jumpers = move_maps::jumpingAttackers(subj_loc, attacking_color, knights, kings, pawns);
    if (jumpers)
      return true;
  }
  return false;
}

PieceType Board::piece_at(u64 location) const
{
  return piece_at(u64ToSquare(location));
}

PieceType Board::piece_at(Square location) const
{
  assert(isValidSquare(location));
  return piece_board_[location];
}

int Board::stack_size() const
{
  return state_stack_.size();
}

int Board::material(Color color) const
{
  int result = 0;
  int start = color;
  int end = 12;
  for (PieceType i = start; i < end; i += 2)
    result += getMaterialValue(i) * hadd(bitboard_[i]);

  return result;
}

int Board::material() const { return material(White) - material(Black); }

int Board::mobility(Color c)
{ // Minor piece and rook mobility
  int result = 0;

  // needs a different implementation
  const u64 occ = occupancy();
  const u64 unfriendly_occ = ~occupancy(c);

  u64List piece_bitscan;

  bitscanAll(bitboard_[piece::get_rook(c)], piece_bitscan);
  for (int i = 0; i < piece_bitscan.len(); i++)
  {
    result += hadd(move_maps::rookMoves(u64ToSquare(piece_bitscan[i]), occ) & unfriendly_occ);
  }

  bitscanAll(bitboard_[piece::get_bishop(c)], piece_bitscan);
  for (int i = 0; i < piece_bitscan.len(); i++)
  {
    result += hadd(move_maps::bishopMoves(u64ToSquare(piece_bitscan[i]), occ) & unfriendly_occ);
  }

  bitscanAll(bitboard_[piece::get_knight(c)], piece_bitscan);
  for (int i = 0; i < piece_bitscan.len(); i++)
  {
    result += hadd(move_maps::knightMoves(u64ToSquare(piece_bitscan[i])) & unfriendly_occ);
  }

  return result; // todo fix
}

float Board::tropism(u64 square, Color enemyColor)
{
  static const int weights[6] = {0, 1, 1, 2, 3, 0};
  int row = u64ToRow(square);
  int col = u64ToRow(square);
  int sum = 0;
  u64List arr;
  for (PieceType p = enemyColor; p < 12; p += 2)
  {
    u64 bb = get_bitboard(p);
    bitscanAll(bb, arr);
    for (int i = 0; i < arr.len(); i++)
    {
      int index = arr[i];
      int eRow = squareToRow(index);
      int eCol = squareToCol(index);
      sum += (abs(eRow - row) + abs(eCol - col)) * weights[p];
    }
  }
  return -1.0f * sum;
}

/*
float Board::kingSafety(Color c)
{
  //-5 for being next to one
  // pawn shield +10 bonus for 3 pawns and bottom row
  float score = 0.0;
  // u64 friendlies = board.occupancy(c);
  // u64 enemies = board.occupancy(flipColor(c));
  u64 kingBB = c == White ? get_bitboard(piece::white::king) : get_bitboard(piece::black::king);
  u64 pawns = c == White ? get_bitboard(piece::white::pawn) : get_bitboard(piece::black::pawn);
  Square index = u64ToSquare(kingBB);
  int rookDir = c == White ? ROOK_UP : ROOK_DOWN;
  u64 backRank = getBackRank(c);
  int col = squareToCol(index);
  int row = squareToRow(index);
  bool isOnEdge = col % 7 == 0;

  // Keep pawns in front of king
  if (kingBB & backRank)
  {
    float pawnShieldScore = hadd(kingMoves(index) & pawns);
    if (isOnEdge)
    {
      pawnShieldScore /= 2.0f;
    }
    else
    {
      pawnShieldScore /= 3.0f;
    }
    score += pawnShieldScore * 3.0f;
  }

  // Penalize being on or next to open files
  float openFilesPenalty = 0.0f;
  if (!(rookMoves(index, rookDir) & pawns))
  {
    openFilesPenalty += 2.0f;
  }
  if (col == 0)
  {
    int indexRight = intFromPair(row, col + 1);
    if (!(rookMoves(indexRight, rookDir) & pawns))
    {
      openFilesPenalty += 1.0f;
    }
  }
  else if (col == 7)
  {
    int indexLeft = intFromPair(row, col - 1);
    if (!(rookMoves(indexLeft, rookDir) & pawns))
    {
      openFilesPenalty += 1.0f;
    }
  }
  else
  {
    int indexLeft = intFromPair(row, col - 1);
    int indexRight = intFromPair(row, col + 1);
    if (!(rookMoves(indexLeft, rookDir) & pawns))
    {
      openFilesPenalty += 1.0f;
    }
    if (!(rookMoves(indexRight, rookDir) & pawns))
    {
      openFilesPenalty += 1.0f;
    }
  }
  score -= openFilesPenalty * 1.5f; // weight for open files

  return score;
}
*/
