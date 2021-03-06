#include "game/chessboard.hpp"

const u64 file_masks[8] = {0x101010101010101,  0x202020202020202,
                           0x404040404040404,  0x808080808080808,
                           0x1010101010101010, 0x2020202020202020,
                           0x4040404040404040, 0x8080808080808080};

const float piece_square_scores_early[12][64] = {
    {0,         0,         0,         0,         0,         0,
     0,         0,         0.0714286, 0.0714286, 0.0714286, 0.0714286,
     0.0714286, 0.0714286, 0.0714286, 0.0714286, 0.142857,  0.142857,
     0.142857,  0.142857,  0.142857,  0.142857,  0.142857,  0.142857,
     0.214286,  0.214286,  0.214286,  0.214286,  0.214286,  0.214286,
     0.214286,  0.214286,  0.285714,  0.285714,  0.285714,  0.285714,
     0.285714,  0.285714,  0.285714,  0.285714,  0.357143,  0.357143,
     0.357143,  0.357143,  0.357143,  0.357143,  0.357143,  0.357143,
     0.428571,  0.428571,  0.428571,  0.428571,  0.428571,  0.428571,
     0.428571,  0.428571,  0.5,       0.5,       0.5,       0.5,
     0.5,       0.5,       0.5,       0.5},
    {0.5,       0.5,       0.5,       0.5,       0.5,       0.5,
     0.5,       0.5,       0.428571,  0.428571,  0.428571,  0.428571,
     0.428571,  0.428571,  0.428571,  0.428571,  0.357143,  0.357143,
     0.357143,  0.357143,  0.357143,  0.357143,  0.357143,  0.357143,
     0.285714,  0.285714,  0.285714,  0.285714,  0.285714,  0.285714,
     0.285714,  0.285714,  0.214286,  0.214286,  0.214286,  0.214286,
     0.214286,  0.214286,  0.214286,  0.214286,  0.142857,  0.142857,
     0.142857,  0.142857,  0.142857,  0.142857,  0.142857,  0.142857,
     0.0714286, 0.0714286, 0.0714286, 0.0714286, 0.0714286, 0.0714286,
     0.0714286, 0.0714286, 0,         0,         0,         0,
     0,         0,         0,         0},
    {0.25,  0.375, 0.5,   0.5,  0.5,   0.5,  0.375, 0.25,  0.375, 0.5,  0.75,
     0.75,  0.75,  0.75,  0.5,  0.375, 0.5,  0.75,  1,     1,     1,    1,
     0.75,  0.5,   0.5,   0.75, 1,     1,    1,     1,     0.75,  0.5,  0.5,
     0.75,  1,     1,     1,    1,     0.75, 0.5,   0.5,   0.75,  1,    1,
     1,     1,     0.75,  0.5,  0.375, 0.5,  0.75,  0.75,  0.75,  0.75, 0.5,
     0.375, 0.25,  0.375, 0.5,  0.5,   0.5,  0.5,   0.375, 0.25},
    {0.25,  0.375, 0.5,   0.5,  0.5,   0.5,  0.375, 0.25,  0.375, 0.5,  0.75,
     0.75,  0.75,  0.75,  0.5,  0.375, 0.5,  0.75,  1,     1,     1,    1,
     0.75,  0.5,   0.5,   0.75, 1,     1,    1,     1,     0.75,  0.5,  0.5,
     0.75,  1,     1,     1,    1,     0.75, 0.5,   0.5,   0.75,  1,    1,
     1,     1,     0.75,  0.5,  0.375, 0.5,  0.75,  0.75,  0.75,  0.75, 0.5,
     0.375, 0.25,  0.375, 0.5,  0.5,   0.5,  0.5,   0.375, 0.25},
    {0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333,
     0.333333, 0.333333, 0.428571, 0.428571, 0.428571, 0.428571, 0.428571,
     0.428571, 0.333333, 0.333333, 0.428571, 0.52381,  0.52381,  0.52381,
     0.52381,  0.428571, 0.333333, 0.333333, 0.428571, 0.52381,  0.619048,
     0.619048, 0.52381,  0.428571, 0.333333, 0.333333, 0.428571, 0.52381,
     0.619048, 0.619048, 0.52381,  0.428571, 0.333333, 0.333333, 0.428571,
     0.52381,  0.52381,  0.52381,  0.52381,  0.428571, 0.333333, 0.333333,
     0.428571, 0.428571, 0.428571, 0.428571, 0.428571, 0.428571, 0.333333,
     0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333,
     0.333333},
    {0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333,
     0.333333, 0.333333, 0.428571, 0.428571, 0.428571, 0.428571, 0.428571,
     0.428571, 0.333333, 0.333333, 0.428571, 0.52381,  0.52381,  0.52381,
     0.52381,  0.428571, 0.333333, 0.333333, 0.428571, 0.52381,  0.619048,
     0.619048, 0.52381,  0.428571, 0.333333, 0.333333, 0.428571, 0.52381,
     0.619048, 0.619048, 0.52381,  0.428571, 0.333333, 0.333333, 0.428571,
     0.52381,  0.52381,  0.52381,  0.52381,  0.428571, 0.333333, 0.333333,
     0.428571, 0.428571, 0.428571, 0.428571, 0.428571, 0.428571, 0.333333,
     0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333,
     0.333333},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889,
     0.388889, 0.388889, 0.425926, 0.425926, 0.425926, 0.425926, 0.425926,
     0.425926, 0.388889, 0.388889, 0.425926, 0.462963, 0.462963, 0.462963,
     0.462963, 0.425926, 0.388889, 0.388889, 0.425926, 0.462963, 0.5,
     0.5,      0.462963, 0.425926, 0.388889, 0.388889, 0.425926, 0.462963,
     0.5,      0.5,      0.462963, 0.425926, 0.388889, 0.388889, 0.425926,
     0.462963, 0.462963, 0.462963, 0.462963, 0.425926, 0.388889, 0.388889,
     0.425926, 0.425926, 0.425926, 0.425926, 0.425926, 0.425926, 0.388889,
     0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889,
     0.388889},
    {0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889,
     0.388889, 0.388889, 0.425926, 0.425926, 0.425926, 0.425926, 0.425926,
     0.425926, 0.388889, 0.388889, 0.425926, 0.462963, 0.462963, 0.462963,
     0.462963, 0.425926, 0.388889, 0.388889, 0.425926, 0.462963, 0.5,
     0.5,      0.462963, 0.425926, 0.388889, 0.388889, 0.425926, 0.462963,
     0.5,      0.5,      0.462963, 0.425926, 0.388889, 0.388889, 0.425926,
     0.462963, 0.462963, 0.462963, 0.462963, 0.425926, 0.388889, 0.388889,
     0.425926, 0.425926, 0.425926, 0.425926, 0.425926, 0.425926, 0.388889,
     0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889,
     0.388889},
    {1,        0.857143, 0.714286, 0.571429, 0.571429, 0.714286, 0.857143,
     1,        0.857143, 0.714286, 0.571429, 0.428571, 0.428571, 0.571429,
     0.714286, 0.857143, 0.714286, 0.571429, 0.428571, 0.285714, 0.285714,
     0.428571, 0.571429, 0.714286, 0.571429, 0.428571, 0.285714, 0.142857,
     0.142857, 0.285714, 0.428571, 0.571429, 0.571429, 0.428571, 0.285714,
     0.142857, 0.142857, 0.285714, 0.428571, 0.571429, 0.714286, 0.571429,
     0.428571, 0.285714, 0.285714, 0.428571, 0.571429, 0.714286, 0.857143,
     0.714286, 0.571429, 0.428571, 0.428571, 0.571429, 0.714286, 0.857143,
     1,        0.857143, 0.714286, 0.571429, 0.571429, 0.714286, 0.857143,
     1},
    {1,        0.857143, 0.714286, 0.571429, 0.571429, 0.714286, 0.857143,
     1,        0.857143, 0.714286, 0.571429, 0.428571, 0.428571, 0.571429,
     0.714286, 0.857143, 0.714286, 0.571429, 0.428571, 0.285714, 0.285714,
     0.428571, 0.571429, 0.714286, 0.571429, 0.428571, 0.285714, 0.142857,
     0.142857, 0.285714, 0.428571, 0.571429, 0.571429, 0.428571, 0.285714,
     0.142857, 0.142857, 0.285714, 0.428571, 0.571429, 0.714286, 0.571429,
     0.428571, 0.285714, 0.285714, 0.428571, 0.571429, 0.714286, 0.857143,
     0.714286, 0.571429, 0.428571, 0.428571, 0.571429, 0.714286, 0.857143,
     1,        0.857143, 0.714286, 0.571429, 0.571429, 0.714286, 0.857143,
     1}};

const float piece_square_scores_late[12][64] = {
    {0,         0,         0,         0,         0,         0,
     0,         0,         0.0714286, 0.0714286, 0.0714286, 0.0714286,
     0.0714286, 0.0714286, 0.0714286, 0.0714286, 0.142857,  0.142857,
     0.142857,  0.142857,  0.142857,  0.142857,  0.142857,  0.142857,
     0.214286,  0.214286,  0.214286,  0.214286,  0.214286,  0.214286,
     0.214286,  0.214286,  0.285714,  0.285714,  0.285714,  0.285714,
     0.285714,  0.285714,  0.285714,  0.285714,  0.357143,  0.357143,
     0.357143,  0.357143,  0.357143,  0.357143,  0.357143,  0.357143,
     0.428571,  0.428571,  0.428571,  0.428571,  0.428571,  0.428571,
     0.428571,  0.428571,  0.5,       0.5,       0.5,       0.5,
     0.5,       0.5,       0.5,       0.5},
    {0.5,       0.5,       0.5,       0.5,       0.5,       0.5,
     0.5,       0.5,       0.428571,  0.428571,  0.428571,  0.428571,
     0.428571,  0.428571,  0.428571,  0.428571,  0.357143,  0.357143,
     0.357143,  0.357143,  0.357143,  0.357143,  0.357143,  0.357143,
     0.285714,  0.285714,  0.285714,  0.285714,  0.285714,  0.285714,
     0.285714,  0.285714,  0.214286,  0.214286,  0.214286,  0.214286,
     0.214286,  0.214286,  0.214286,  0.214286,  0.142857,  0.142857,
     0.142857,  0.142857,  0.142857,  0.142857,  0.142857,  0.142857,
     0.0714286, 0.0714286, 0.0714286, 0.0714286, 0.0714286, 0.0714286,
     0.0714286, 0.0714286, 0,         0,         0,         0,
     0,         0,         0,         0},
    {0.25,  0.375, 0.5,   0.5,  0.5,   0.5,  0.375, 0.25,  0.375, 0.5,  0.75,
     0.75,  0.75,  0.75,  0.5,  0.375, 0.5,  0.75,  1,     1,     1,    1,
     0.75,  0.5,   0.5,   0.75, 1,     1,    1,     1,     0.75,  0.5,  0.5,
     0.75,  1,     1,     1,    1,     0.75, 0.5,   0.5,   0.75,  1,    1,
     1,     1,     0.75,  0.5,  0.375, 0.5,  0.75,  0.75,  0.75,  0.75, 0.5,
     0.375, 0.25,  0.375, 0.5,  0.5,   0.5,  0.5,   0.375, 0.25},
    {0.25,  0.375, 0.5,   0.5,  0.5,   0.5,  0.375, 0.25,  0.375, 0.5,  0.75,
     0.75,  0.75,  0.75,  0.5,  0.375, 0.5,  0.75,  1,     1,     1,    1,
     0.75,  0.5,   0.5,   0.75, 1,     1,    1,     1,     0.75,  0.5,  0.5,
     0.75,  1,     1,     1,    1,     0.75, 0.5,   0.5,   0.75,  1,    1,
     1,     1,     0.75,  0.5,  0.375, 0.5,  0.75,  0.75,  0.75,  0.75, 0.5,
     0.375, 0.25,  0.375, 0.5,  0.5,   0.5,  0.5,   0.375, 0.25},
    {0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333,
     0.333333, 0.333333, 0.428571, 0.428571, 0.428571, 0.428571, 0.428571,
     0.428571, 0.333333, 0.333333, 0.428571, 0.52381,  0.52381,  0.52381,
     0.52381,  0.428571, 0.333333, 0.333333, 0.428571, 0.52381,  0.619048,
     0.619048, 0.52381,  0.428571, 0.333333, 0.333333, 0.428571, 0.52381,
     0.619048, 0.619048, 0.52381,  0.428571, 0.333333, 0.333333, 0.428571,
     0.52381,  0.52381,  0.52381,  0.52381,  0.428571, 0.333333, 0.333333,
     0.428571, 0.428571, 0.428571, 0.428571, 0.428571, 0.428571, 0.333333,
     0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333,
     0.333333},
    {0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333,
     0.333333, 0.333333, 0.428571, 0.428571, 0.428571, 0.428571, 0.428571,
     0.428571, 0.333333, 0.333333, 0.428571, 0.52381,  0.52381,  0.52381,
     0.52381,  0.428571, 0.333333, 0.333333, 0.428571, 0.52381,  0.619048,
     0.619048, 0.52381,  0.428571, 0.333333, 0.333333, 0.428571, 0.52381,
     0.619048, 0.619048, 0.52381,  0.428571, 0.333333, 0.333333, 0.428571,
     0.52381,  0.52381,  0.52381,  0.52381,  0.428571, 0.333333, 0.333333,
     0.428571, 0.428571, 0.428571, 0.428571, 0.428571, 0.428571, 0.333333,
     0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333, 0.333333,
     0.333333},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889,
     0.388889, 0.388889, 0.425926, 0.425926, 0.425926, 0.425926, 0.425926,
     0.425926, 0.388889, 0.388889, 0.425926, 0.462963, 0.462963, 0.462963,
     0.462963, 0.425926, 0.388889, 0.388889, 0.425926, 0.462963, 0.5,
     0.5,      0.462963, 0.425926, 0.388889, 0.388889, 0.425926, 0.462963,
     0.5,      0.5,      0.462963, 0.425926, 0.388889, 0.388889, 0.425926,
     0.462963, 0.462963, 0.462963, 0.462963, 0.425926, 0.388889, 0.388889,
     0.425926, 0.425926, 0.425926, 0.425926, 0.425926, 0.425926, 0.388889,
     0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889,
     0.388889},
    {0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889,
     0.388889, 0.388889, 0.425926, 0.425926, 0.425926, 0.425926, 0.425926,
     0.425926, 0.388889, 0.388889, 0.425926, 0.462963, 0.462963, 0.462963,
     0.462963, 0.425926, 0.388889, 0.388889, 0.425926, 0.462963, 0.5,
     0.5,      0.462963, 0.425926, 0.388889, 0.388889, 0.425926, 0.462963,
     0.5,      0.5,      0.462963, 0.425926, 0.388889, 0.388889, 0.425926,
     0.462963, 0.462963, 0.462963, 0.462963, 0.425926, 0.388889, 0.388889,
     0.425926, 0.425926, 0.425926, 0.425926, 0.425926, 0.425926, 0.388889,
     0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889, 0.388889,
     0.388889},
    {0,        0.142857, 0.285714, 0.428571, 0.428571, 0.285714, 0.142857,
     0,        0.142857, 0.285714, 0.428571, 0.571429, 0.571429, 0.428571,
     0.285714, 0.142857, 0.285714, 0.428571, 0.571429, 0.714286, 0.714286,
     0.571429, 0.428571, 0.285714, 0.428571, 0.571429, 0.714286, 0.857143,
     0.857143, 0.714286, 0.571429, 0.428571, 0.428571, 0.571429, 0.714286,
     0.857143, 0.857143, 0.714286, 0.571429, 0.428571, 0.285714, 0.428571,
     0.571429, 0.714286, 0.714286, 0.571429, 0.428571, 0.285714, 0.142857,
     0.285714, 0.428571, 0.571429, 0.571429, 0.428571, 0.285714, 0.142857,
     0,        0.142857, 0.285714, 0.428571, 0.428571, 0.285714, 0.142857,
     0},
    {0,        0.142857, 0.285714, 0.428571, 0.428571, 0.285714, 0.142857,
     0,        0.142857, 0.285714, 0.428571, 0.571429, 0.571429, 0.428571,
     0.285714, 0.142857, 0.285714, 0.428571, 0.571429, 0.714286, 0.714286,
     0.571429, 0.428571, 0.285714, 0.428571, 0.571429, 0.714286, 0.857143,
     0.857143, 0.714286, 0.571429, 0.428571, 0.428571, 0.571429, 0.714286,
     0.857143, 0.857143, 0.714286, 0.571429, 0.428571, 0.285714, 0.428571,
     0.571429, 0.714286, 0.714286, 0.571429, 0.428571, 0.285714, 0.142857,
     0.285714, 0.428571, 0.571429, 0.571429, 0.428571, 0.285714, 0.142857,
     0,        0.142857, 0.285714, 0.428571, 0.428571, 0.285714, 0.142857,
     0}};

board::Status Board::status() {
  // Retrieve cached value
  if (status_ != board::Status::NotCalculated)
    return status_;

  // Calculate and store value
  if (state_.has_repeated || state_.halfmove_counter >= 50) {
    status_ = board::Status::Draw;
  } else if ((hadd(bitboard_[piece::white::pawn] |
                   bitboard_[piece::black::pawn] |
                   bitboard_[piece::white::queen] |
                   bitboard_[piece::black::queen] |
                   bitboard_[piece::black::rook] |
                   bitboard_[piece::white::rook]) == 0) &&
             (!((hadd(bitboard_[piece::white::bishop] |
                      bitboard_[piece::white::knight]) >= 2 &&
                 hadd(bitboard_[piece::white::bishop]) > 0) ||
                (hadd(bitboard_[piece::black::bishop] |
                      bitboard_[piece::black::knight]) >= 2 &&
                 hadd(bitboard_[piece::black::bishop]) > 0)))) {
    status_ = board::Status::Draw;
  } else if (is_check()) {
    if (is_checkmate()) {
      if (turn() == White)
        status_ = board::Status::BlackWin;
      else
        status_ = board::Status::WhiteWin;
    } else {
      // check, but not checkmate: must be still playing
      status_ = board::Status::Playing;
    }
  } else if (is_stalemate()) {
    status_ = board::Status::Stalemate;
  } else {
    status_ = board::Status::Playing;
  }

  return status_;
}

Color Board::turn() const { return state_.turn; }

bool Board::is_check() const { return state_.is_check; }

u64 Board::hash() const { return state_.hash; }

u64 Board::occupancy() const {
  assert(!(occupancy(White) & occupancy(Black)));
  return occupancy_bitboard_;
}

u64 Board::occupancy(Color color) const {
  assert(color == White || color == Black);

  if (color == White)
    return bitboard_[piece::white::king] | bitboard_[piece::white::queen] |
           bitboard_[piece::white::bishop] | bitboard_[piece::white::pawn] |
           bitboard_[piece::white::rook] | bitboard_[piece::white::knight];

  return bitboard_[piece::black::king] | bitboard_[piece::black::queen] |
         bitboard_[piece::black::bishop] | bitboard_[piece::black::pawn] |
         bitboard_[piece::black::rook] | bitboard_[piece::black::knight];
}

Move_ Board::move_from_src_dest(Square src, Square dest) const {
  return move_from_src_dest(src, dest, piece::EmptyPiece);
}

Move_ Board::last_move() const { return state_.last_move; }

u64 Board::get_bitboard(PieceType piece_) const { return bitboard_[piece_]; }

/**
 * Takes in a colorless piece as promotion
 */
Move_ Board::move_from_src_dest(Square src, Square dest, int promotion) const {
  // Validate move...
  MoveList<256> mv_list = legal_moves();
  assert(mv_list.size() > 0);

  for (int i = 0; i < mv_list.size(); i++) {
    Move_ mv = mv_list[i];
    if (mv.src_square() == src && mv.dest_square() == dest) {
      if (mv.is_promotion()) {
        if (piece::to_colorless(mv.promoting_piece(White)) == promotion) {
          return mv;
        }
        // otherwise continue
      } else {
        return mv;
      }
    }
  }
  assert(false);
  return Move_::NullMove(); // if given a wrong move then just return null move
}

/**
 * used in uncheck and checking for castling
 */
u64 Board::attackers_to_(u64 subjects, Color attacking_color) const {
  assert(subjects != 0);

  u64List subj_bitscan;
  bitscanAll(subjects, subj_bitscan);
  const u64 occ = occupancy();
  const u64 rooks = bitboard_[piece::get_rook(attacking_color)] |
                    bitboard_[piece::get_queen(attacking_color)];
  const u64 bishops = bitboard_[piece::get_bishop(attacking_color)] |
                      bitboard_[piece::get_queen(attacking_color)];
  const u64 knights = bitboard_[piece::get_knight(attacking_color)];
  const u64 kings = bitboard_[piece::get_king(attacking_color)];
  const u64 pawns = bitboard_[piece::get_pawn(attacking_color)];

  u64 attacker_map = 0;

  for (int i = 0; i < subj_bitscan.len(); i++) {
    u64 subj_loc = subj_bitscan[i];
    u64 sliders =
        move_maps::slidingAttackers(occ | subj_loc, subj_loc, rooks, bishops);
    u64 jumpers = move_maps::jumpingAttackers(subj_loc, attacking_color,
                                              knights, kings, pawns);
    attacker_map |= sliders | jumpers;
  }
  return attacker_map;
}

/**
 * This is technically redundant with attackers_to_ but we get a theoretical
 * speedup by returning early if there are multiple subjects.
 */
bool Board::is_attacked_(u64 subjects, Color attacking_color) const {
  assert(subjects != 0);

  u64List subj_bitscan;
  bitscanAll(subjects, subj_bitscan);
  u64 occ = occupancy();
  u64 rooks = bitboard_[piece::get_rook(attacking_color)] |
              bitboard_[piece::get_queen(attacking_color)];
  u64 bishops = bitboard_[piece::get_bishop(attacking_color)] |
                bitboard_[piece::get_queen(attacking_color)];
  u64 knights = bitboard_[piece::get_knight(attacking_color)];
  u64 kings = bitboard_[piece::get_king(attacking_color)];
  u64 pawns = bitboard_[piece::get_pawn(attacking_color)];

  for (int i = 0; i < subj_bitscan.len(); i++) {
    u64 subj_loc = subj_bitscan[i];
    u64 sliders =
        move_maps::slidingAttackers(occ | subj_loc, subj_loc, rooks, bishops);
    if (sliders)
      return true;
    u64 jumpers = move_maps::jumpingAttackers(subj_loc, attacking_color,
                                              knights, kings, pawns);
    if (jumpers)
      return true;
  }
  return false;
}

PieceType Board::piece_at(u64 location) const {
  return piece_at(u64ToSquare(location));
}

PieceType Board::piece_at(Square location) const {
  assert(isValidSquare(location));
  return piece_board_[location];
}

int Board::stack_size() const { return state_stack_.size(); }

int Board::material(Color color) const {
  int result = 0;
  int start = color;
  int end = 12;
  for (PieceType i = start; i < end; i += 2)
    result += getMaterialValue(i) * hadd(bitboard_[i]);

  return result;
}

int Board::material() const { return material(White) - material(Black); }

float Board::mobility(Color c) { // Minor piece and rook mobility
  float result = 0;

  int piece_count = 0;

  const u64 occ = occupancy();
  const u64 unfriendly_occ = ~occupancy(c);

  u64List piece_bitscan;

  bitscanAll(bitboard_[piece::get_rook(c)], piece_bitscan);
  for (int i = 0; i < piece_bitscan.len(); i++) {
    result += hadd(move_maps::rookMoves(u64ToSquare(piece_bitscan[i]), occ) &
                   unfriendly_occ) /
              14.0f;
    piece_count++;
  }

  bitscanAll(bitboard_[piece::get_bishop(c)], piece_bitscan);
  for (int i = 0; i < piece_bitscan.len(); i++) {
    result += hadd(move_maps::bishopMoves(u64ToSquare(piece_bitscan[i]), occ) &
                   unfriendly_occ) /
              13.0f;
    piece_count++;
  }

  bitscanAll(bitboard_[piece::get_knight(c)], piece_bitscan);
  for (int i = 0; i < piece_bitscan.len(); i++) {
    result += hadd(move_maps::knightMoves(u64ToSquare(piece_bitscan[i])) &
                   unfriendly_occ) /
              8.0f;
    piece_count++;
  }

  if (piece_count == 0)
    return 0;

  return result / (int)piece_count;
}

/**
 * Similar to mobility but counts squares controlled in total.
 */
int Board::space(Color c) const {
  u64 controlled_map = 0;

  const u64 occ = occupancy();
  const u64 unfriendly_occ = ~occupancy(c);

  u64List piece_bitscan;

  u64 queen_bitboard = bitboard_[piece::get_queen(c)];

  bitscanAll(bitboard_[piece::get_rook(c)] | queen_bitboard, piece_bitscan);
  for (int i = 0; i < piece_bitscan.len(); i++) {
    controlled_map |= move_maps::rookMoves(u64ToSquare(piece_bitscan[i]), occ) &
                      unfriendly_occ;
  }

  bitscanAll(bitboard_[piece::get_bishop(c)] | queen_bitboard, piece_bitscan);
  for (int i = 0; i < piece_bitscan.len(); i++) {
    controlled_map |=
        move_maps::bishopMoves(u64ToSquare(piece_bitscan[i]), occ) &
        unfriendly_occ;
  }

  bitscanAll(bitboard_[piece::get_knight(c)], piece_bitscan);
  for (int i = 0; i < piece_bitscan.len(); i++) {
    controlled_map |=
        move_maps::knightMoves(u64ToSquare(piece_bitscan[i])) & unfriendly_occ;
  }

  bitscanAll(bitboard_[piece::get_pawn(c)], piece_bitscan);
  for (int i = 0; i < piece_bitscan.len(); i++) {
    controlled_map |=
        move_maps::pawnMoves(u64ToSquare(piece_bitscan[i]), c) & unfriendly_occ;
  }

  return hadd(controlled_map);
}

float Board::king_pawn_tropism(Color c) const {
  const u64 king = bitboard_[piece::get_king(c)];
  const int row = u64ToRow(king);
  const int col = u64ToRow(king);

  double sum = 0;
  double pawn_count = 0;
  u64List arr;
  for (PieceType p = 0; p < 2; p++) {
    u64 pawn_bits = bitboard_[p];
    bitscanAll(pawn_bits, arr);
    for (int i = 0; i < arr.len(); i++) {
      pawn_count++;
      u64 pawn_location = arr[i];
      int p_row = u64ToRow(pawn_location);
      int p_col = u64ToCol(pawn_location);
      sum += abs(p_row - row) + abs(p_col - col);
    }
  }
  if (pawn_count == 0)
    return 0;
  return sum /= pawn_count;
}

float Board::piece_square_score(PieceType piece, Square square,
                                float game_stage_early) const {
  if (piece::is_empty(piece))
    return 0;

  float early_score = piece_square_scores_early[piece][square];
  float late_score = piece_square_scores_late[piece][square];

  // interpolate
  return early_score * game_stage_early +
         late_score * (game_stage_early - 1.0f);
}

/*
 * This function will contain pawn shield.
 */
float Board::king_pawn_shield(Color c) const {
  const Square king_square = u64ToSquare(bitboard_[piece::get_king(c)]);
  const u64 three_forward = move_maps::pawnMoves(king_square, c) |
                            move_maps::pawnCaptures(king_square, c);
  const float pawns_in_front =
      hadd(bitboard_[piece::get_pawn(c)] & three_forward);
  const float pawn_score = pawns_in_front / 3.0f;
  return pawn_score;
}

float Board::king_piece_tropism(Color c) const {
  static const int weights[6] = {0, 1, 1, 2, 3, 0};
  const u64 king_position = bitboard_[piece::get_king(c)];
  const Row row = u64ToRow(king_position);
  const Col col = u64ToRow(king_position);

  int sum = 0;
  u64List arr;
  for (PieceType p = oppositeColor(c); p < 12; p += 2) {
    if (weights[p] == 0)
      continue;

    bitscanAll(bitboard_[p], arr);
    for (int i = 0; i < arr.len(); i++) {
      Square index = u64ToSquare(arr[i]);
      Row eRow = squareToRow(index);
      Col eCol = squareToRow(index);
      sum += (abs(eRow - row) + abs(eCol - col)) * weights[p];
    }
  }
  return -sum;
}

/**
 * 0 if the file is closed
 * 0.5 if the file is half-open for color c
 * 1 if the file is fully open
 */
float isOpenFile(Color c, Col file_index, u64 white_pawns, u64 black_pawns) {
  if (file_index < 0 || file_index > 7)
    return 0;

  u64 file_mask = file_masks[file_index];
  white_pawns &= file_mask;
  black_pawns &= file_mask;

  if (white_pawns && black_pawns)
    return 0;

  else if (black_pawns && c == White)
    return 0.5;

  else if (white_pawns && c == Black)
    return 0.5;

  return 0;
}

float Board::king_open_files(Color c) const {
  // look at the files next to king...
  // 1 = fully open
  // 0.5 = half open
  // 0 closed
  float sum = 0;
  Col king_col = u64ToCol(bitboard_[piece::get_king(c)]);
  Color enemy_color = oppositeColor(c);
  const u64 white_pawns = bitboard_[piece::white::pawn];
  const u64 black_pawns = bitboard_[piece::black::pawn];
  sum += isOpenFile(enemy_color, king_col - 1, white_pawns, black_pawns);
  sum += isOpenFile(enemy_color, king_col, white_pawns, black_pawns);
  sum += isOpenFile(enemy_color, king_col + 1, white_pawns, black_pawns);

  return -sum;
}
