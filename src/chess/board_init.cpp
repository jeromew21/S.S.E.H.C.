#include "game/chess.hpp"
#include "uci/strings.hpp"

Board::Board()
{
    LoadPosition("rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1");
}

void Board::LoadPosition(std::string fen)
{
    // TODO: regex validation

    PieceType piecelist[64];
    auto elems = tokenize(fen);

    int i = 0;
    int row = 7;
    int col = 0;
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
            PieceType p = pieceFromString(ch);
            if (p == Empty)
            {
                int count = std::stoi(ch);
                for (int k = 0; k < count; k++)
                {
                    piecelist[row * 8 + col] = p;
                    col += 1;
                }
            }
            else
            {
                piecelist[row * 8 + col] = p;
                col += 1;
            }
        }
        i += 1;
    }

    Color t;
    if (elems[1] == "w")
    {
        t = White;
    }
    else
    {
        t = Black;
    }

    int w_long, w_short, b_long, b_short;
    w_long = 0;
    w_short = 0;
    b_long = 0;
    b_short = 0;
    for (int k = 0; k < (int)elems[2].size(); k++)
    {
        char ch = elems[2][k];
        if (ch == 'K')
        {
            w_short = 1;
        }
        else if (ch == 'Q')
        {
            w_long = 1;
        }
        else if (ch == 'k')
        {
            b_short = 1;
        }
        else if (ch == 'q')
        {
            b_long = 1;
        }
    }

    int epIndex = -1;
    if (elems[3] != "-")
    {
        epIndex = indexFromSquareName(elems[3]);
    }

    int halfmove0 = std::stoi(elems[4]);
    int fullmove0 = std::stoi(elems[5]);
    LoadPosition(piecelist, t, epIndex, w_long, w_short, b_long, b_short, halfmove0, fullmove0);
}

void Board::LoadPosition(PieceType *piecelist, Color turn, int ep_col,
                         int w_long, int w_short, int b_long, int b_short, int fullmove, int halfmove)
{
}