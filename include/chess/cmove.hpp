#ifndef CMOVE_HPP
#define CMOVE_HPP

//"CMove" because of potential naming conflict w/ move op

#include <assert.h>
#include "chess/pieces.hpp"
#include "misc/bits.hpp"

// not an enum because casting is annoying, this serves the same purpose.
namespace move_type
{
  const int Null = 0;
  const int Default = 1;
  const int KPromotion = 2;
  const int CastleShort = 3;
  const int BPromotion = 4;
  const int EnPassant = 5;
  const int RPromotion = 6;
  const int DoublePawn = 7;
  const int QPromotion = 8;
  const int CastleLong = 9;
} // namespace move_type

struct CMove
{
  uint16_t data;

  static CMove NullMove() { return CMove(); }

  inline int type_code() { return data & 15; }

  inline bool is_null() { return type_code() == move_type::Null; }
  inline bool not_null() { return type_code() != move_type::Null; }

  inline PieceType promoting_piece()
  {
    assert(type_code() % 2 == 0 && type_code() != 0);
    return type_code();
  }

  // don't remember why we need this exactly
  inline PieceType promoting_piece(Color c)
  {
    return promoting_piece() + c;
  }

  inline bool is_promotion()
  {
    int tc = type_code();
    return tc >= move_type::KPromotion && tc <= move_type::QPromotion;
  }

  inline bool is_castle()
  {
    int tc = type_code();
    return tc == move_type::CastleLong || tc == move_type::CastleShort;
  }

  inline Square src_square() { return data >> 10; }
  inline Square dest_square() { return (data >> 4) & 63; }

  inline u64 src() { return u64FromSquare(data >> 10); }
  inline u64 dest() { return u64FromSquare((data >> 4) & 63); }

  CMove(Square src0, Square dest0, int typeCode)
  {
    data = (src0 << 10) | (dest0 << 4) | (typeCode & 15);
  }

  CMove() : data(0) {} //null move

  bool operator==(const CMove &other) const { return data == other.data; }
  bool operator!=(const CMove &other) const { return data != other.data; }
};

#endif