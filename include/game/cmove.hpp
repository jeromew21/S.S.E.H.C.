#ifndef CMOVE_HPP
#define CMOVE_HPP

#include "misc/bits.hpp"
#include "misc/debug.hpp"

// not an enum because type casting is scary
// this serves the same purpose as one
namespace move_type
{
  const int NullMove = 0;
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

/**
 * "CMove" because of potential naming conflict w/ move op
 */
class CMove
{
private:
  uint16_t data_;

public:
  static CMove NullMove() { return CMove(); }

  inline int type_code() const { return data_ & 15; } //call move_type?

  inline bool is_null() const { return type_code() == move_type::NullMove; }

  /**
   * Will return the the promotin piece given a color.
   */
  inline PieceType promoting_piece(Color color) const
  {
    assert(type_code() % 2 == 0 && type_code() > 0);
    return type_code() + color;
  }

  inline bool is_promotion() const //does this work? Shouldn't we check for evenness?
  {
    const int code = type_code();
    return code > 0 && code % 2 == 0;
  }

  inline bool is_castle() const
  {
    const int code = type_code();
    return code == move_type::CastleLong || code == move_type::CastleShort;
  }

  inline Square src_square() const { return data_ >> 10; }
  inline Square dest_square() const { return (data_ >> 4) & 63; }

  inline u64 src() const { return u64FromSquare(data_ >> 10); }
  inline u64 dest() const { return u64FromSquare((data_ >> 4) & 63); }

  CMove(Square src_, Square dest_, int type_code_)
  {
    if (!isValidSquare(src_))
    {
      dump32(dest_);
    }
    if (!isValidSquare(dest_))
    {
      dump32(dest_);
    }
    assert(isValidSquare(src_));
    assert(isValidSquare(dest_));
    data_ = (src_ << 10) | (dest_ << 4) | (type_code_ & 15);
  }

  CMove() : data_(0) {} // null move

  bool operator==(const CMove &other) const { return data_ == other.data_; }
  bool operator!=(const CMove &other) const { return data_ != other.data_; }

  friend std::ostream &operator<<(std::ostream &os, CMove mv)
  {
    os << mv.data_;
    return os;
  }
};

#endif