#include "ai/ai.hpp"

TranspositionTable<4194304> table;
MiniTable<131072> pvTable;
KillerTable kTable;
HistoryTable hTable;
CounterMoveTable cTable;

// eventually turn this into a matrix
const float material_weight = 1.0f;
const float space_weight = 1.0f;
const float mobility_weight = 100.0f;
const float king_tropism_weight = 1.0f;
const float king_safety_weight = 1.0f;
const float piece_score_weight = 0.1f;

bool ai::isCheckmateScore(Score sc) { return SCORE_MAX - abs(sc) < 100; }

void ai::reset()
{
  kTable.clear();
  hTable.clear();
  cTable.clear();
}

int ai::materialEvaluation(Board &board) { return board.material(); }

int ai::evaluation(Board &board)
{
  board::Status status = board.status();

  if (status == board::Status::Stalemate || status == board::Status::Draw)
    return 0;
  else if (status == board::Status::WhiteWin)
    return SCORE_MAX;
  else if (status == board::Status::BlackWin)
    return SCORE_MIN;

  const float piece_count = hadd(board.occupancy());
  const float game_stage_early = piece_count / 32.0f;
  const float game_stage_late = 1.0f - game_stage_early;

  // this is the minimax score, positive is good for White, negative good for Black.
  float score = 0;

  // Piece+squares
  float piece_score_white = 0;
  float piece_score_black = 0;
  for (Square i = 0; i < 64; i++)
  {
    piece_score_white += board.piece_square_score(board.piece_at(i), i, game_stage_early);
    piece_score_black += board.piece_square_score(board.piece_at(i), i, game_stage_early);
  }

  // piece+square scores
  float piece_score = piece_score_white - piece_score_black;
  score += piece_score * piece_score_weight;

  // mobility
  float mobility = board.mobility(White) - board.mobility(Black);
  score += mobility * mobility_weight; // mobility is a score from 0.0 to 1.0

  // material
  float material = board.material();
  score += material * material_weight;

  // space
  float space = board.space(White) - board.space(Black);
  score += space * space_weight * game_stage_early;

  // king-pawn tropism
  float kp_tropism = board.king_pawn_tropism(White) - board.king_pawn_tropism(Black);
  score += kp_tropism * king_tropism_weight * game_stage_late;

  // king safety
  float king_safety = board.king_safety(White) - board.king_safety(Black);
  score += king_safety * king_safety_weight * game_stage_early;

  // split king safety into multiple methods w/ different weights

  return score;
}

int ai::flippedEval(Board &board)
{
  if (board.turn() == White)
    return ai::evaluation(board);
  else
    return -ai::evaluation(board);
}

//return best move from a certain depth. uses alpha beta search to find best score.
//increases total number of nodes traveled through total_nodes_visited
CMove ai::rootMove(Board &board, int depth, std::atomic<bool> &stop, Score &outscore, CMove prevPv,
                   std::priority_queue<MoveScore> &prevScores, int &total_nodes_visited,
                   std::chrono::time_point<std::chrono::system_clock> start)
{
  TableNode node(board, depth, PV);

  auto moves = board.legal_moves();

  Score alpha = SCORE_MIN;
  Score beta = SCORE_MAX;

  CMove refMove;

  if (depth > 1)
  {
    TableBucket *found = table.find(node);
    if (found != table.end())
    {
      if (found->node.depth > depth)
      {
        NodeType typ = found->node.nodeType;
        if (typ == All)
          beta = found->score;
        else if (typ == Cut) // lower bound
        {
          refMove = found->node.bestMove;
          alpha = found->score;
        }
        else if (typ == PV)
          refMove = found->node.bestMove;
      }
      else
        refMove = found->node.bestMove;
    }
    moves.Clear();
    while (!prevScores.empty())
    {
      CMove mv = prevScores.top().mv;
      prevScores.pop();
      if (mv != refMove && mv != prevPv)
        moves.PushBack(mv); //skipping some legal moves?
    }
  }

  else if (depth == 1)
  {
    std::priority_queue<MoveScore> MoveScores;

    for (int i = 0; i < moves.size(); i++)
    {
      CMove mv = moves[i];
      board.MakeMove(mv);
      Score score = -quiescence(board, 0, 0, alpha, beta, stop, total_nodes_visited, 0);
      board.UnmakeMove();
      MoveScores.push(MoveScore(mv, score));
    }

    moves.Clear();
    while (!MoveScores.empty())
    {
      CMove mv = MoveScores.top().mv;
      MoveScores.pop();
      if (mv != refMove && mv != prevPv)
        moves.PushBack(mv);
    }
  }

  if (!refMove.is_null())
    moves.PushBack(refMove);
  moves.PushBack(prevPv);

  CMove chosen = moves.back(); // PV-move
  outscore = alpha;

  bool nullWindow = false;
  bool raisedAlpha = false;

  while (!moves.is_empty())
  {
    int subtree_count = 0;
    CMove mv = moves.pop_back();
    board.MakeMove(mv);

    Score score;
    if (nullWindow)
    {
      score = -ai::zeroWindowSearch(board, depth, 0, -alpha, stop,
                                    subtree_count, All);
      if (score > alpha)
        score = -ai::alphaBetaSearch(board, depth, 0, -beta, -alpha,
                                     stop, subtree_count, PV, true);
    }
    else
    {
      score = -ai::alphaBetaSearch(board, depth, 0, -beta, -alpha, stop,
                                   subtree_count, PV, true);
      nullWindow = true;
    }

    board.UnmakeMove();

    total_nodes_visited += subtree_count; // add running tally of nodes visited
    prevScores.push(MoveScore(mv, subtree_count));

    if (stop)
    {
      outscore = alpha;
      sendPV(board, depth, chosen, total_nodes_visited, score, start);
      return chosen; // returns best found so far
    }                // here bc if AB call stopped, it won't be full search

    if (score > alpha)
    {
      alpha = score;
      raisedAlpha = true;
      chosen = mv;
      outscore = score;
      node.bestMove = chosen;
      table.insert(node, score); // new PV found
      sendPV(board, depth, chosen, total_nodes_visited, score, start);
    }
  }

  if (!raisedAlpha)
  {
    uci::sendToUciClient("info string root fail-low");
    outscore = alpha;
  }

  return chosen;
}

// reconstruct PV
void ai::sendPV(Board &board, int depth, CMove pvMove, int total_node_count,
                Score score, std::chrono::time_point<std::chrono::system_clock> start)
{
  auto stop = std::chrono::high_resolution_clock::now();
  auto duration = std::chrono::duration_cast<std::chrono::microseconds>(stop - start); // or milliseconds
  double runtime = duration.count();

  std::string pv = " pv " + moveToUCIAlgebraic(pvMove);
  board.MakeMove(pvMove);
  MiniTableBucket *search = pvTable.find(board.hash());
  if (search != pvTable.end())
  {
    for (int k = 0; k < search->depth; k++)
    {
      CMove mv = search->seq[k];

      if (mv.is_null())
        break;

      pv += " " + moveToUCIAlgebraic(mv);
    }
  }
  board.UnmakeMove();

  std::string score_str;

  score_str += "info depth " + std::to_string(depth + 1);

  if (ai::isCheckmateScore(score))
  {

    int dRoot = SCORE_MAX - abs(score);
    int v = dRoot - board.stack_size();

    if (v % 2 == 0)
      v = -(v / 2);
    else
      v = (v + 1) / 2;

    uci::sendToUciClient("info string plies " + std::to_string(v));
    score_str += " score mate " + std::to_string(v);
  }
  else
  {
    score_str += " score cp " + std::to_string(score);
  }

  int nps = ((double)total_node_count) / (runtime / 1e6L);
  int search_time = runtime / 1e3L;

  score_str += " time " + std::to_string(search_time);
  score_str += " nps " + std::to_string(nps);
  score_str += " nodes " + std::to_string(total_node_count);

  // finally append PV
  score_str += pv;

  uci::sendToUciClient(score_str);
}

// //alpha beta on captures.
Score ai::quiescence(Board &board, int depth, int plyCount, Score alpha,
                     Score beta, std::atomic<bool> &stop, int &count, int quiesce_depth)
{
  count++;

  Score baseline = ai::flippedEval(board);

  board::Status status = board.status();
  if (status != board::Status::Playing)
  {
    if (baseline == SCORE_MIN)
      return SCORE_MIN + board.stack_size();
    else
      return baseline; // alpha vs baseline...
  }

  bool isCheck = board.is_check();

  if (baseline >= beta && !isCheck)
    return beta; // fail hard

  if (alpha < baseline && !isCheck)
    alpha = baseline; // push alpha up to baseline

  u64 occ = board.occupancy();
  bool deltaPrune = hadd(occ) > 12; //true && hadd(occ) > 12; **

  MoveList<256> movelist;
  if (!isCheck)
    movelist = board.capture_moves(); // order by MVV-LVA
  else
    movelist = board.legal_moves();

  std::priority_queue<MoveScore> MoveScores;

  for (int i = 0; i < movelist.size(); i++)
  {
    CMove mv = movelist[i];
    int see = -1;
    bool isCapture = mv.dest() & occ;
    if (isCapture)
      see = board.see(mv);
    bool isPromotion = mv.is_promotion();
    // bool isPawn = mv.getSrc() & (board.bitboard[W_Pawn] &
    // board.bitboard[B_Pawn]);
    bool isDeltaPrune =
        deltaPrune && isCapture &&
        (baseline + 200 + getMaterialValue(board.piece_at(mv.dest())) < alpha);
    bool isCheckingMove = board.is_checking_move(mv);
    bool isChecking = (quiesce_depth == 0 || quiesce_depth == 2) && isCheckingMove && //**
                      (!isCapture || (isCapture && see >= 0 && !isDeltaPrune));
    int mvscore = 0;
    if (!isCapture && isPromotion && mv.promoting_piece(White) == piece::white::queen)
      mvscore = 900;
    else
      mvscore = getMaterialValue(board.piece_at(mv.dest()));

    if ((!isDeltaPrune && see >= 0) || isChecking || isPromotion || isCheck)
      MoveScores.push(MoveScore(mv, mvscore));
  }

  while (!MoveScores.empty())
  {
    CMove mv = MoveScores.top().mv;
    MoveScores.pop();
    board.MakeMove(mv);
    Score score = -quiescence(board, depth, plyCount + 1, -beta, -alpha,
                              stop, count, quiesce_depth + 1);
    board.UnmakeMove();
    if (stop)
      return alpha;
    if (score >= beta)
      return beta;
    if (score > alpha)
      alpha = score;
  }
  return alpha;
}

std::vector<CMove> ai::generateMovesOrdered(Board &board, CMove refMove,
                                            int plyCount,
                                            int &numPositiveMoves)
{
  // order moves for non-qsearch
  u64 occ = board.occupancy();
  CMove lastMove = board.last_move();
  auto movelist = board.legal_moves();
  std::vector<CMove> vec;

  // priority:
  // 5) hashmove (1)
  // 4) winning captures (?)
  // 3) heuristic moves: killer and counter move (2)
  // 2) equal captures (?)
  // 1) all other, sorted by history heuristic
  // 0) losingCaptures (?)

  std::priority_queue<MoveScore> queue;

  for (int i = 0; i < movelist.size(); i++)
  {
    // sort move into correct bucket
    CMove mv = movelist[i];
    u64 dest = mv.dest();
    if (mv == refMove)
      queue.push(MoveScore(mv, std::pow(2, 5)));
    else if (dest & occ) //If the move is a capture we check if we will wind up winning or losing material.
    {
      int see = board.see(mv);
      if (see > 0)
      {
        queue.push(MoveScore(mv, std::pow(2, 4)));
        numPositiveMoves++;
      }
      else if (see == 0)
        queue.push(MoveScore(mv, std::pow(2, 2))); // trades
      else
        queue.push(MoveScore(mv, std::pow(2, 0))); // bad captures
    }

    else if (kTable.contains(mv, plyCount))
      queue.push(MoveScore(mv, std::pow(2, 3)));
    else if (cTable.contains(lastMove, mv, board.turn()))
      queue.push(MoveScore(mv, std::pow(2, 3)));
    else
      queue.push(MoveScore(mv, std::pow(2, 1))); // all other
  }

  while (!queue.empty())
  {
    vec.push_back(queue.top().mv);
    queue.pop();
  }

  return vec;
}

Score ai::alphaBetaSearch(Board &board, int depth, int plyCount, Score alpha,
                          Score beta, std::atomic<bool> &stop, int &count,
                          NodeType myNodeType, bool isSave)
{
  count++;

  board::Status status = board.status();
  TableNode node(board, depth, myNodeType);

  if (status != board::Status::Playing)
  {
    Score score;
    if (status == board::Status::WhiteWin || status == board::Status::BlackWin)
      score = SCORE_MIN + board.stack_size();
    else if (status == board::Status::Stalemate || status == board::Status::Draw)
      score = 0;
    else
      score = ai::flippedEval(board);

    if (score < alpha)
      return alpha;
    else if (score > beta)
      return beta;
    return score;
  }

  if (depth <= 0)
  {
    Score score = quiescence(board, depth, plyCount, alpha, beta, stop, count, 0);
    // if mate found in qsearch
    if (score < alpha)
      return alpha;
    else if (score > beta)
      return beta;
    else
      return score;
  }

  CMove refMove;

  //Here we update refMove, alpha, and beta if we've already found this position.
  auto found = table.find(node);
  if (found != table.end())
  {
    // hits_++;
    if (found->node.depth >= depth)
    { // searched already to a higher depth
      NodeType typ = found->node.nodeType;
      if (typ == All)
        beta = min(beta, found->score);
      else if (typ == Cut)
      {
        refMove = found->node.bestMove;
        alpha = max(alpha, found->score);
      }
      else if (typ == PV)
      {
        refMove = found->node.bestMove;
        // reconstruct PV here
        // have to append child pv to current node
        MiniTableBucket *currentPVNode = pvTable.find(board.hash());
        if (currentPVNode != pvTable.end())
        {
          if (currentPVNode->depth < depth)
          {
            board.MakeMove(refMove);
            MiniTableBucket *childPVNode = pvTable.find(board.hash());
            board.UnmakeMove();
            if (childPVNode != pvTable.end())
            {
              currentPVNode->seq[0] = refMove;
              currentPVNode->depth = depth;
              for (int i = 0; i < depth - 1; i++)
                currentPVNode->seq[i + 1] = childPVNode->seq[i];
            }
          }
        }
        return (found->score);
      }
      if (alpha >= beta)
        return beta; // fail-hard fix
    }
    else // Ideally a PV-node from prior iteration
      refMove = found->node.bestMove;
  }

  // use IID to find best move????

  CMove lastMove = board.last_move();

  u64 occ = board.occupancy();

  bool nullWindow = false;
  bool raisedAlpha = false;

  int numPositiveMoves = 0;
  auto moves = generateMovesOrdered(board, refMove, plyCount, numPositiveMoves);
  int movesSearched = 0;

  while (!moves.empty())
  {
    CMove fmove = moves.back();
    moves.pop_back();

    board.MakeMove(fmove);

    int subdepth = depth - 1;
    if (board.is_check())
      subdepth = depth; // Check ext
    Score score;
    if (nullWindow)
    {
      score = -ai::zeroWindowSearch(board, subdepth, plyCount + 1, -alpha,
                                    stop, count, All);
      if (score > alpha)
        score =
            -ai::alphaBetaSearch(board, subdepth, plyCount + 1, -beta,
                                 -alpha, stop, count, PV, isSave);
    }
    else
    {
      score = -ai::alphaBetaSearch(board, subdepth, plyCount + 1, -beta,
                                   -alpha, stop, count, PV, isSave);
      nullWindow = true;
    }

    board.UnmakeMove();
    movesSearched++;

    if (stop)
      return alpha;

    if (score >= beta)
    { // our move is better than beta, so this node is cut
      node.nodeType = Cut;
      node.bestMove = fmove;
      table.insert(node, beta);

      if (fmove.dest() & ~occ) //don't update if capture, cause the move will likely not be an option in the future
      {
        hTable.insert(fmove, board.turn(), depth);
        kTable.insert(fmove, plyCount);
        cTable.insert(board.turn(), lastMove, fmove);
      }
      return beta; // fail hard
    }

    if (score > alpha)
    {
      raisedAlpha = true;
      node.nodeType = PV;
      node.bestMove = fmove;
      alpha = score; // push up alpha
    }
  }
  if (!raisedAlpha)
    node.nodeType = All;

  table.insert(node, alpha); // store node
  if (isSave && raisedAlpha)
  {
    std::array<CMove, 64> movelist;
    int mc = 0;
    for (int k = 0; k < depth; k++)
    {
      TableNode nodeSearch(board, depth, PV);
      auto search = table.find(nodeSearch);
      if (search != table.end())
      {
        TableNode node = search->node;
        CMove mv = node.bestMove;
        movelist[k] = mv;
        board.MakeMove(mv);
        mc++;
      }
      else
      {
        depth = k;
        break;
      }
    }
    for (int k = 0; k < mc; k++)
      board.UnmakeMove();

    pvTable.insert(node.hash, depth, &movelist);
  }
  return alpha;
}

//search instead with smaller window to try to save time.
Score ai::zeroWindowSearch(Board &board, int depth, int plyCount, Score beta,
                           std::atomic<bool> &stop, int &count,
                           NodeType myNodeType)
{
  count++;

  Score alpha = beta - 1;

  NodeType childNodeType = myNodeType == Cut ? All : Cut;

  bool nullmove = true;
  bool lmr = true;
  bool futilityPrune = true;

  board::Status status = board.status();
  TableNode node(board, depth, myNodeType);

  if (status != board::Status::Playing)
  {
    Score score;
    if (status == board::Status::WhiteWin || status == board::Status::BlackWin)
      score = SCORE_MIN + board.stack_size();
    else if (status == board::Status::Stalemate || status == board::Status::Draw)
      score = 0;
    else
      score = ai::flippedEval(board);

    if (score < alpha)
      return alpha;
    else if (score > beta)
      return beta;
    return score;
  }

  if (depth <= 0)
  {
    Score score = quiescence(board, depth, plyCount, alpha, beta, stop, count, 0);
    // if mate found in qsearch
    if (score < alpha)
      return alpha;

    else if (score > beta)
      return beta;

    return score;
  }

  CMove refMove;

  auto found = table.find(node);
  if (found != table.end())
  {
    if (found->node.depth >= depth)
    { // searched already to a higher depth
      NodeType typ = found->node.nodeType;
      if (typ == All)
        beta = min(beta, found->score);

      else if (typ == Cut)
      {
        refMove = found->node.bestMove;
        alpha = max(alpha, found->score);
      }

      else if (typ == PV)
        return (found->score);

      if (alpha >= beta)
        return beta;
    }
    else
      refMove = found->node.bestMove;
  }

  u64 occ = board.occupancy();
  bool nodeIsCheck = board.is_check();
  CMove lastMove = board.last_move();
  int occCount = hadd(occ);

  // NULL MOVE PRUNE
  int rNull = 3;
  if (nullmove && (!nodeIsCheck) && !lastMove.is_null() && (occCount > 12))
  {
    CMove mv = CMove::NullMove();
    board.MakeMove(mv);
    Score score =
        -ai::zeroWindowSearch(board, depth - 1 - rNull, plyCount + 1,
                              1 - beta, stop, count, Cut);
    board.UnmakeMove();
    if (score >= beta)
    { // our move is better than beta, so this node is cut
      // off
      node.nodeType = Cut;
      node.bestMove = CMove::NullMove();
      table.insert(node, beta);
      return beta; // fail hard
    }
  }

  Score fscore;
  if (depth == 1 && futilityPrune)
    fscore = ai::flippedEval(board) + 900;

  int movesSearched = 0;

  int numPositiveMoves = 0;
  std::vector<CMove> moves = generateMovesOrdered(board, refMove, plyCount, numPositiveMoves);
  numPositiveMoves = max(4, numPositiveMoves);
  int moveCount = moves.size();

  while (!moves.empty())
  {
    CMove fmove = moves.back();
    moves.pop_back();

    if (futilityPrune && (depth == 1) && (fmove != refMove) && (!nodeIsCheck) &&
        (fscore < alpha) && (fmove.dest() & ~occ) &&
        (!board.is_checking_move(fmove)))
    {
      // skip this move
      continue;
    }

    bool isCapture = fmove.dest() & occ;
    bool isPawnMove =
        fmove.src() & (board.get_bitboard(piece::white::pawn) & board.get_bitboard(piece::black::pawn));
    bool isReduced = false;

    board.MakeMove(fmove);

    int subdepth = depth - 1;
    if (board.is_check())
      subdepth = depth; // Check ext

    else if (lmr && (!nodeIsCheck) && (!isCapture) && (depth > 2) &&
             (movesSearched > numPositiveMoves) && (!isPawnMove))
    {
      int half = numPositiveMoves + (moveCount - numPositiveMoves) / 2;
      if (movesSearched > half)
        subdepth = depth - 4;

      else
        subdepth = depth - 3;

      isReduced = true;
    }

    Score score = -ai::zeroWindowSearch(board, subdepth, plyCount + 1,
                                        -alpha, stop, count, childNodeType);

    // LMR here
    if (isReduced && score >= beta)
    {
      // re-search
      subdepth = depth - 1;
      score = -ai::zeroWindowSearch(board, subdepth, plyCount + 1, -alpha,
                                    stop, count, childNodeType);
    }

    board.UnmakeMove();
    movesSearched++;

    if (stop) // if stopped in subcall, then we want to ignore it
      return alpha;

    if (score >= beta)
    { // our move is better than beta, so this node is cut
      node.nodeType = Cut;
      node.bestMove = fmove;
      table.insert(node, beta);

      if (fmove.dest() & ~occ)
      {
        hTable.insert(fmove, board.turn(), depth);
        kTable.insert(fmove, plyCount);
        cTable.insert(board.turn(), lastMove, fmove);
      }

      return beta; // fail hard
    }
  }
  node.nodeType = All;
  table.insert(node, alpha); // store node
  return alpha;
}
