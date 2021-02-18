#include <queue>

#include "datastructures/search.hpp"

//moved from ai.cpp
CMove popMin(std::vector<MoveScore> &vec)
{
    int m = SCORE_MAX;
    int minI = 0;
    for (int i = 0; i < (int)vec.size(); i++)
    {
        if (vec[i].score < m)
        {
            m = vec[i].score;
            minI = i;
        }
    }
    CMove bm = vec[minI].mv;
    vec.erase(vec.begin() + minI);
    return bm;
}

CMove popMax(std::vector<MoveScore> &vec)
{
    int m = SCORE_MIN;
    int maxI = 0;
    for (int i = 0; i < (int)vec.size(); i++)
    {
        if (vec[i].score > m)
        {
            m = vec[i].score;
            maxI = i;
        }
    }
    CMove bm = vec[maxI].mv;
    vec.erase(vec.begin() + maxI);
    return bm;
}

void sortMoves(std::vector<MoveScore> &vec)
{
    int size = vec.size();
    for (int i = 1; i < size; i++)
    {
        MoveScore key = vec[i];
        int j = i - 1;
        while (j >= 0 && vec[j].score > key.score)
        {
            vec[j + 1] = vec[j];
            j -= 1;
        }
        vec[j + 1] = key;
    }
}