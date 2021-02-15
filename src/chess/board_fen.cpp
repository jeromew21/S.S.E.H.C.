#include "game/chessboard.hpp"
#include "uci/strings.hpp"
#include "uci/fen.hpp"

// This file implements methods in Board
// that deal with FEN.

void Board::Reset()
{
  LoadPosition("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
}

void Board::LoadPosition(std::string fen)
{
  // TODO: regex validation

  PieceType piece_list[64];
  std::vector<std::string> elems = tokenize(fen);

  int i(0), row(7), col(0);
  while (row > 0 || col < 8)
  {
    std::string ch(1, elems[0][i]);
    if (ch == "/")
    {
      row -= 1;
      col = 0;
    }
    else
    {
      PieceType p = pieceFromStringFen(ch);
      if (p == piece::EmptyPiece)
      {
        int count = std::stoi(ch);
        for (int k = 0; k < count; k++)
        {
          piece_list[row * 8 + col] = p;
          col += 1;
        }
      }
      else
      {
        piece_list[row * 8 + col] = p;
        col += 1;
      }
    }
    i += 1;
  }

  Color turn_to_move = elems[1] == "w" ? White : Black;

  // Set rights to false by default
  castle::Rights castling_rights(0, 0, 0, 0);
  for (int k = 0; k < elems[2].size(); k++)
  {
    char ch = elems[2][k];
    if (ch == 'K')
    {
      castling_rights.Set(White, castle::short_, 1);
    }
    else if (ch == 'Q')
    {
      castling_rights.Set(White, castle::long_, 1);
    }
    else if (ch == 'k')
    {
      castling_rights.Set(Black, castle::short_, 1);
    }
    else if (ch == 'q')
    {
      castling_rights.Set(Black, castle::long_, 1);
    }
  }

  int ep_square = elems[3] != "-" ? squareFromName(elems[3]) : -1;

  int halfmove = std::stoi(elems[4]);
  int fullmove = std::stoi(elems[5]);

  LoadPosition(piece_list, turn_to_move, ep_square, castling_rights, halfmove, fullmove);
}

void Board::LoadPosition(PieceType piece_list[64], Color turn_to_move, int ep_square,
                         castle::Rights castling_rights, int fullmove, int halfmove)
{
  // Clearing and resetting state
  // Need to hard reset completely.
  _maps_generated = false;
  state_stack_.Clear();
  status_ = GameStatus::NotCalculated;
  state_ = BoardState();
  SetEpSquare_(-1);
  SetCastlingRights_(White, castle::long_, 1);
  SetCastlingRights_(White, castle::short_, 1);
  SetCastlingRights_(Black, castle::long_, 1);
  SetCastlingRights_(Black, castle::short_, 1);

  for (PieceType i = 0; i < 12; i++)
  {
    bitboard_[i] = 0;
  }

  Dump();

  // Make sure the hash is properly initialized
  // Otherwise there could be bugs
  hash_ = 0; // start at zero?

  for (Square i = 0; i < 64; i++)
  {
    PieceType piece = piece_list[i];

    if (piece != piece::EmptyPiece)
    {
      AddPiece_(piece, u64FromSquare(i));
    }
  }

  SetEpSquare_(ep_square);
  // SetCastlingRights_(castling_rights)
}

std::string Board::fen() const {
  return "foo";
}
