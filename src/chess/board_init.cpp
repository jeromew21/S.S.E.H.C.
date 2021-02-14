#include "game/chessboard.hpp"
#include "uci/strings.hpp"
#include "uci/fen.hpp"

Board::Board()
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

  castle::Rights castling_rights;
  for (int k = 0; k < elems[2].size(); k++)
  {
    char ch = elems[2][k];
    if (ch == 'K')
    {
      castling_rights.SetTrue(castle::white::short_);
    }
    else if (ch == 'Q')
    {
      castling_rights.SetTrue(castle::white::long_);
    }
    else if (ch == 'k')
    {
      castling_rights.SetTrue(castle::black::short_);
    }
    else if (ch == 'q')
    {
      castling_rights.SetTrue(castle::black::long_);
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
  state_stack_.Clear();
  status_ = GameStatus::NotCalculated;

  for (PieceType i = 0; i < 12; i++)
  {
    bitboard_[i] = 0;
  }

  

  hash_ = 0; // start at zero

  for (int i = 0; i < 64; i++)
  {
    PieceType piece = piece_list[i];

    if (piece != piece::EmptyPiece)
    {
      // _addPiece(piece, u64FromIndex(i));
    }
  }

  SetEpSquare_(ep_square);
  //SetCastlingRights_(castling_rights)

}
