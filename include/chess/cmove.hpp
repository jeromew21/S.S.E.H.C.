#ifndef CMOVE_HPP
#define CMOVE_HPP

//"CMove" because of potential naming conflict w/ move op

#include "chess/pieces.hpp"
#include "misc/bits.hpp"

namespace MoveType {
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
}

struct CMove {
  uint16_t data;

  static CMove NullMove() { return CMove(); }

  inline bool isNull() { return getTypeCode() == MoveType::Null; }

  inline bool notNull() { return getTypeCode() != MoveType::Null; }

  inline int getTypeCode() { return data & 15; }

  inline PieceType getPromotingPiece() { return getTypeCode(); }

  inline PieceType getPromotingPiece(Color c) {
    return getPromotingPiece() + c;
  }

  inline bool isPromotion() {
    int tc = getTypeCode();
    return tc >= MoveType::KPromotion && tc <= MoveType::QPromotion;
  }

  inline bool isCastle() {
    int tc = getTypeCode();
    return tc == MoveType::CastleLong || tc == MoveType::CastleShort;
  }

  inline Square getSrcSquare() { return data >> 10; }

  inline Square getDestSquare() { return (data >> 4) & 63; }

  inline u64 getSrc() { return u64FromSquare(data >> 10); }

  inline u64 getDest() { return u64FromSquare((data >> 4) & 63); }

  CMove(Square src0, Square dest0, int typeCode) {
    data = (src0 << 10) | (dest0 << 4) | (typeCode & 15);
  }

  CMove() : data(0) {} //null move

  bool operator==(const CMove &other) const { return data == other.data; }

  bool operator!=(const CMove &other) const { return data != other.data; }
};

#endif