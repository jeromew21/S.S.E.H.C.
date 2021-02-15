#include "uci/fen.hpp"
#include "game/pieces.hpp"

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
