#include "chess/chessboard.hpp"

void Board::MakeMove(CMove mv) {
    
}

void Board::UnmakeMove() {

}

GameStatus Board::status() {
    return GameStatus::NotCalculated;
}

u64 Board::occupancy() {
    return 0;
}

u64 Board::occupancy(Color color) {
    return 0;
}