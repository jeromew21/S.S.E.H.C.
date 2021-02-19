#include "game/chessboard.hpp"
#include "uci/strings.hpp"

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
  board::castle::Rights castling_rights(0, 0, 0, 0);
  for (unsigned k = 0; k < elems[2].size(); k++)
  {
    char ch = elems[2][k];
    if (ch == 'K')
    {
      castling_rights.Set(White, board::castle::short_, 1);
    }
    else if (ch == 'Q')
    {
      castling_rights.Set(White, board::castle::long_, 1);
    }
    else if (ch == 'k')
    {
      castling_rights.Set(Black, board::castle::short_, 1);
    }
    else if (ch == 'q')
    {
      castling_rights.Set(Black, board::castle::long_, 1);
    }
  }

  int ep_square = elems[3] != "-" ? squareFromName(elems[3]) : -1;

  int halfmove = std::stoi(elems[4]);
  int fullmove = std::stoi(elems[5]);

  LoadPosition(piece_list, turn_to_move, ep_square, castling_rights, halfmove, fullmove);
}

/**
 * note to self: make sure that the move counter and other state elements are correctly outputted
 */
std::string Board::fen() const {

  return "foo";
}
