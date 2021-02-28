#ifndef AIDATASTRUCTURES_HPP
#define AIDATASTRUCTURES_HPP

#include "misc/definitions.hpp"
#include "game/chessboard.hpp"

const NodeType PV = 0;
const NodeType Cut = 1;
const NodeType All = 2;

const int SCORE_MIN = -100000; //std::numeric_limits<int>::min();
const int SCORE_MAX = 100000;  //std::numeric_limits<int>::max();

/**
 * A tuple that contains a move and a corresponding score.
 */
struct MoveScore
{
  Move_ mv;
  Score score;
  MoveScore(Move_ mv0, Score score0) : mv(mv0), score(score0) {}
  bool operator<(const MoveScore other) const { return (score < other.score); }
};

struct TableNode
{
  u64 hash;
  int8_t depth;
  NodeType nodeType;
  Move_ bestMove;

  TableNode(Board &board, int d, NodeType typ)
  {
    hash = board.hash();
    depth = d;
    nodeType = typ;
    bestMove = Move_::NullMove();
  }

  bool operator==(const TableNode &other) const { return (hash == other.hash); }

  TableNode() { hash = 0; }
};

//for variations?
struct TableBucket
{
  TableNode node;
  Score score;

  TableBucket() {}
};

template <int N>
class TranspositionTable
{
  TableBucket _arr[N];
  size_t members;

public:
  TranspositionTable() { members = 0; }

  int ppm() { return ((double)members / (double)N) * 1000.0; }

  TableBucket *find(TableNode &node)
  {
    u64 hashval = node.hash;
    int bucketIndex = hashval % N;
    TableBucket *bucket = _arr + bucketIndex;
    if (bucket->node == node)
      return bucket;
    else
      return NULL;
  }

  TableBucket *end() { return NULL; }

  void insert(TableNode &node, Score score)
  {
    u64 hashval = node.hash;
    int bucketIndex = hashval % N;
    TableBucket *bucket = _arr + bucketIndex;
    if (bucket->node.hash == 0) //nicer way to check for empty spot?
      members += 1;
      
    //store importance?
    if (node.hash == bucket->node.hash && node.depth < bucket->node.depth) //same position
      return;
    bucket->node = node;
    bucket->score = score;
  }
};

struct MiniTableBucket
{
  u64 hash; // position hash
  //int depth; // number of plies to root saved
  int8_t depth;
  std::array<Move_, 64> seq;
};

template <int N>
class MiniTable
{
  MiniTableBucket _arr[N];
  int members;

public:
  MiniTable()
  {
    members = 0;
  }

  MiniTableBucket *find(u64 hashval)
  {
    int bucketIndex = hashval % N;
    MiniTableBucket *bucket = _arr + bucketIndex;
    if (hashval == bucket->hash)
      return bucket;
    else
      return NULL;
  }

  int ppm() { return ((double)members / (double)N) * 1000.0; }

  MiniTableBucket *end() { return NULL; }

  void clear()
  {
    for (size_t i = 0; i < N; i++)
      _arr[i].hash = 0;
  }

  //can we pass by reference instead?
  void insert(u64 hashval, int depth, std::array<Move_, 64> *moveseq)
  {
    int bucketIndex = hashval % N;
    MiniTableBucket *bucket = _arr + bucketIndex;
    if (bucket->hash == 0)
      members += 1;
    bucket->hash = hashval;
    bucket->seq = *moveseq; //pass by reference instead?
    bucket->depth = depth;
  }
};

#endif