#include "game/chessboard.hpp"

MoveVector<256> Board::legal_moves() {
    MoveVector<256> mv;
    return mv;
}

bool Board::is_checking_move(CMove mv) {
    return false;
}