#include "uci/strings.hpp"

std::string pieceToStringFen(PieceType piece)
{
  if (piece == piece::EmptyPiece) {
    return "-";
  }
  assert (piece >= 0 && piece < 12);
  switch (piece)
  {
  case piece::white::king:
    return "K";
  case piece::black::king:
    return "k";
  case piece::white::queen:
    return "Q";
  case piece::black::queen:
    return "q";
  case piece::white::rook:
    return "R";
  case piece::black::rook:
    return "r";
  case piece::white::knight:
    return "N";
  case piece::black::knight:
    return "n";
  case piece::white::bishop:
    return "B";
  case piece::black::bishop:
    return "b";
  case piece::white::pawn:
    return "P";
  case piece::black::pawn:
  default:
    return "p";
  }
}

PieceType pieceFromStringFen(std::string val)
{
  if (val == "K")
    return piece::white::king;
  else if (val == "Q")
    return piece::white::queen;
  else if (val == "B")
    return piece::white::bishop;
  else if (val == "R")
    return piece::white::rook;
  else if (val == "N")
    return piece::white::knight;
  else if (val == "P")
    return piece::white::pawn;
  else if (val == "k")
    return piece::black::king;
  else if (val == "q")
    return piece::black::queen;
  else if (val == "b")
    return piece::black::bishop;
  else if (val == "r")
    return piece::black::rook;
  else if (val == "n")
    return piece::black::knight;
  else if (val == "p")
    return piece::black::pawn;
  else
    return piece::EmptyPiece;
}

std::string moveToUCIAlgebraic(CMove mv)
{
  std::string result;
  if (mv.is_null()) {
    result += "null";
    return result;
  }
  result += squareName(mv.src());
  result += squareName(mv.dest());
  if (mv.is_promotion())
  {
    result += pieceToStringLower(mv.promoting_piece(White));
  }
  return result;
}

std::string pieceToStringLower(PieceType piece) {
  assert (piece >= 0 && piece < 12);
  switch (piece)
  {
  case piece::white::king:
  case piece::black::king:
    return "k";
  case piece::white::queen:
  case piece::black::queen:
    return "q";
  case piece::white::rook:
  case piece::black::rook:
    return "r";
  case piece::white::knight:
  case piece::black::knight:
    return "n";
  case piece::white::bishop:
  case piece::black::bishop:
    return "b";
  case piece::white::pawn:
  case piece::black::pawn:
  default:
    return "p";
  }
}

// location <=> e4, f6, etc
std::string squareName(u64 square)
{
  return squareName(u64ToSquare(square));
}

std::string squareName(Square square)
{
  return FILE_NAMES[squareToCol(square)] + RANK_NAMES[squareToRow(square)];
}

u64 u64FromName(std::string alg)
{
  return u64FromSquare(squareFromName(alg));
}

Square squareFromName(std::string alg)
{
  Col col(0);
  Row row(0);

  if (alg[0] == 'a')
    col = 0;
  else if (alg[0] == 'b')
    col = 1;
  else if (alg[0] == 'c')
    col = 2;
  else if (alg[0] == 'd')
    col = 3;
  else if (alg[0] == 'e')
    col = 4;
  else if (alg[0] == 'f')
    col = 5;
  else if (alg[0] == 'g')
    col = 6;
  else
    col = 7;

  if (alg[1] == '1')
    row = 0;
  else if (alg[1] == '2')
    row = 1;
  else if (alg[1] == '3')
    row = 2;
  else if (alg[1] == '4')
    row = 3;
  else if (alg[1] == '5')
    row = 4;
  else if (alg[1] == '6')
    row = 5;
  else if (alg[1] == '7')
    row = 6;
  else
    row = 7;

  return squareFromPair(row, col);
}
