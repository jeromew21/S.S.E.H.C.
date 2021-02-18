#include <numeric>
#include <functional>
#include <queue>
#include <vector>

#include "ai/ai.hpp"

TranspositionTable<4194304> table;
MiniTable<131072> pvTable;
KillerTable kTable;
HistoryTable hTable;
CounterMoveTable cTable;

bool AI::isCheckmateScore(Score sc) { return SCORE_MAX - abs(sc) < 250; }

void AI::reset()
{
    kTable.clear();
    hTable.clear();
    cTable.clear();
}

int AI::materialEvaluation(Board &board) { return board.material(); }

int AI::evaluation(Board &board)
{
    GameStatus status = board.status();

    if (status == GameStatus::Stalemate || status == GameStatus::Draw)
        return 0;
    else if (status == GameStatus::WhiteWin)
        return SCORE_MAX;
    else if (status == GameStatus::BlackWin)
        return SCORE_MIN;

    int score = 0;

    // mobility
    int mcwhite = board.mobility(White) - 31; //31 = 64/2 - 1
    int mcblack = board.mobility(Black) - 31;

    // Piece-squares
    // Interpolate between 32 pieces and 12 pieces
    float pieceCount = (((float)(max(hadd(board.occupancy()), 12) - 12)) / 20.0f);
    float earlyWeight = pieceCount;
    float lateWeight = 1.0f - pieceCount;

    //changed from for loop
    float pscoreEarly = std::accumulate(board.pieceScoreEarlyGame, board.pieceScoreEarlyGame + 6);
    float pscoreLate = std::accumulate(board.pieceScoreLateGame, board.pieceLateEarlyGame + 6);

    float wpScore = pscoreEarly * earlyWeight + pscoreLate * lateWeight; //weighted score for white

    pscoreEarly = std::accumulate(board.pieceScoreEarlyGame + 6, board.pieceScoreEarlyGame + 12);
    pscoreLate = std::accumulate(board.pieceScoreLateGame + 6, board.pieceLateEarlyGame + 12);

    float bpScore = pscoreEarly * earlyWeight + pscoreLate * lateWeight; //weighted score for black

    // combine features
    score += materialEvaluation(board);
    score += mcwhite - mcblack;
    score += (wpScore - bpScore) * 10.0f;
    score += board.kingSafety(White) * 5.0f * earlyWeight;
    score -= board.kingSafety(Black) * 5.0f * earlyWeight;
    score += board.tropism(board.bitboard[piece::white::king], Black) * 0.03f * earlyWeight;
    score -= board.tropism(board.bitboard[piece::black::king], White) * 0.03f * earlyWeight;
    return score;
}

int AI::flippedEval(Board &board)
{
    if (board.turn() == White)
        return AI::evaluation(board);
    else
        return -AI::evaluation(board);
}

//return best move from a certain depth. uses alpha beta search to find best score.
CMove AI::rootMove(Board &board, int depth, std::atomic<bool> &stop, Score &outscore, CMove prevPv,
                   int &count, std::chrono::_V2::system_clock::time_point start,
                   std::priority_queue<MoveScoreTuple> &prevScores)
{

    TableNode node(board, depth, AI::PV);

    auto moves = board.legalMoves();

    Score alpha = AI::SCORE_MIN;
    Score beta = AI::SCORE_MAX;

    CMove refMove;

    if (depth > 1)
    {
        TableBucket *found = table.find(node);
        if (found != table.end())
        {
            if (found->node.depth > depth) //*
            {
                NodeType typ = found->node.nodeType;
                if (typ == AI::All)
                    beta = found->score;
                else if (typ == AI::Cut) // lower bound
                {
                    refMove = found->node.bestMove;
                    alpha = found->score;
                }
                else if (typ == AI::PV)
                    refMove = found->node.bestMove;
            }
            else
                refMove = found->node.bestMove;
        }
        moves.clear();
        while (!prevScores.empty())
        {
            CMove mv = prevScores.pop().move;
            if (mv != refMove && mv != prevPv)
                moves.push_back(mv); //skipping some legal moves?
        }
    }

    else if (depth == 1)
    {
        std::priority_queue<MoveScoreTuple> MoveScores;

        for (int i = 0; i < moves.size(); i++)
        {
            CMove mv = moves[i];
            board.makeMove(mv);
            Score score = -quiescence(board, 0, 0, alpha, beta, stop, count, 0); //*
            board.unmakeMove();
            MoveScores.push(MoveScoreTuple(mv, score));
        }

        moves.clear();
        while (!MoveScores.empty())
        {
            CMove mv = MoveScores.pop().move;
            if (mv != refMove && mv != prevPv)
                moves.push_back(mv);
        }
    }

    moves.push_back(refMove);
    moves.push_back(prevPv);

    CMove chosen = moves.back(); // PV-move
    outscore = alpha;

    bool nullWindow = false;
    bool raisedAlpha = false;

    while (!moves.empty())
    {
        int subtreeCount = 0;
        CMove mv = moves.back();
        board.makeMove(mv);

        Score score;
        if (nullWindow)
        {
            score = -AI::zeroWindowSearch(board, depth, 0, -alpha, stop, //*why is everything negative
                                          subtreeCount, AI::All);
            if (score > alpha)
                score = -AI::alphaBetaSearch(board, depth, 0, -beta, -alpha,
                                             stop, subtreeCount, AI::PV, true);
        }
        else
        {
            score = -AI::alphaBetaSearch(board, depth, 0, -beta, -alpha, stop,
                                         subtreeCount, AI::PV, true);
            nullWindow = true;
        }
        board.unmakeMove();

        count += subtreeCount;
        prevScores.push(MoveScoreTuple(mv, subtreeCount));

        if (stop)
        {
            outscore = alpha;
            return chosen; // returns best found so far
        }                  // here bc if AB call stopped, it won't be full search

        if (score > alpha)
        {
            alpha = score;
            raisedAlpha = true;
            chosen = mv;
            outscore = alpha;
            node.bestMove = chosen;
            table.insert(node, alpha); // new PV found
            sendPV(board, depth, chosen, count, alpha, start);
        }
    }
    if (!raisedAlpha)
    {
        sendCommand("info string root fail-low");
        outscore = alpha;
    }

    return chosen;
}

//alpha beta on captures.
Score AI::quiescence(Board &board, int depth, int plyCount, Score alpha,
                     Score beta, std::atomic<bool> &stop, int &count, int kickoff)
{
    count += 1;

    Score baseline = AI::flippedEval(board);

    GameStatus status = board.status();

    if (status != GameStatus::Playing)
    {
        if (baseline == AI::SCORE_MIN)
            return AI::SCORE_MIN + board.dstart();
        else
            return baseline; // alpha vs baseline...
    }

    bool isCheck = board.isCheck();

    if (baseline >= beta && !isCheck)
        return beta; // fail hard

    if (alpha < baseline && !isCheck)
        alpha = baseline; // push alpha up to baseline

    u64 occ = board.occupancy();
    bool deltaPrune = hadd(occ) > 12; //true && hadd(occ) > 12; **

    auto movelist = board.legalMoves(); // order by MVV-LVA?

    std::priority_queue<MoveScoreTuple> MoveScores;

    for (int i = 0; i < movelist.size(); i++)
    {
        CMove mv = movelist[i];
        int see = -1;
        bool isCapture = mv.getDest() & occ;
        if (isCapture)
            see = board.see(mv);
        bool isPromotion = mv.isPromotion();
        // bool isPawn = mv.getSrc() & (board.bitboard[W_Pawn] &
        // board.bitboard[B_Pawn]);
        bool isDeltaPrune =
            deltaPrune && isCapture &&
            (baseline + 200 + getMaterialValue(board.pieceAt(mv.getDest())) < alpha);
        bool isCheckingMove = board.isCheckingMove(mv);
        bool isChecking = (kickoff == 0 || kickoff == 2) && isCheckingMove && //**
                          (!isCapture || (isCapture && see >= 0 && !isDeltaPrune));
        int mvscore = 0;
        if (!isCapture && isPromotion && mv.getPromotingPiece() == piece::white::queen)
            mvscore = 900;
        else
            mvscore = getMaterialValue(board.pieceAt(mv.getDest()));

        if ((!isDeltaPrune && see >= 0) || isChecking || isPromotion || isCheck)
            MoveScores.push(MoveScoreTuple(mv, mvscore));
    }
    while (!MoveScores.empty())
    {
        CMove mv = MoveScores.pop().move;
        board.makeMove(mv);
        Score score = -quiescence(board, depth, plyCount + 1, -beta, -alpha,
                                  stop, count, kickoff + 1);
        board.unmakeMove();
        if (stop)
            return alpha;
        if (score >= beta)
            return beta;
        if (score > alpha)
            alpha = score;
    }
    return alpha;
}

//reconstruct PV
void AI::sendPV(Board &board, int depth, CMove pvMove, int nodeCount,
                Score score, std::chrono::_V2::system_clock::time_point start)
{
    std::string pv = " pv " + pvMove.moveToUCIAlgebraic();
    board.makeMove(pvMove);
    MiniTableBucket *search = pvTable.find(board.zobrist());
    if (search != pvTable.end())
    {
        for (int k = 0; k < search->depth; k++)
        {
            CMove mv = search->seq[k];
            pv += " " + mv.moveToUCIAlgebraic();
        }
    }
    board.unmakeMove();

    auto stop = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(
        stop - start); // or milliseconds
    int time = duration.count();

    std::string scoreStr;
    if (AI::isCheckmateScore(score))
    {

        int dRoot = AI::SCORE_MAX - abs(score);
        int v = dRoot - board.dstart();

        if (v % 2 == 0)
            v = -(v / 2);
        else
            v = (v + 1) / 2;

        sendCommand("info string plies " + std::to_string(v));
        scoreStr = " score mate " + std::to_string(v);
    }
    else if (depth == 0)
        return;
    else
        scoreStr = " score cp " + std::to_string(score);

    sendCommand(
        "info depth " + std::to_string(max(1, depth)) + scoreStr + " time " +
        std::to_string(time) + " nps " +
        std::to_string((int)((double)nodeCount / ((double)time / 1000.0))) +
        " nodes " + std::to_string(nodeCount) + " hashfull " +
        std::to_string(table.ppm()) + pv);
}

std::vector<CMove> AI::generateMovesOrdered(Board &board, CMove refMove,
                                            int plyCount,
                                            int &numPositiveMoves)
{
    // order moves for non-qsearch
    u64 occ = board.occupancy();
    AI::LazyMovegen movegen(board.occupancy(board.turn()), board.attackMap);

    std::vector<CMove> hashMoves;
    std::vector<CMove> posCaptures;
    std::vector<CMove> eqCaptures;
    std::vector<CMove> heuristics;
    std::vector<CMove> negCaptures;
    std::vector<CMove> other;

    hashMoves.reserve(2);
    posCaptures.reserve(3);
    eqCaptures.reserve(10);
    heuristics.reserve(3);
    negCaptures.reserve(15);
    other.reserve(15);

    std::priority_queue<MoveScoreTuple> otherWScore;

    CMove lastMove = board.lastMove();

    // priority:
    // 0) hashmove (1)
    // 1) winning caps (?)
    // 2) heuristic moves: killer and counter move (2)
    // 3) equal caps (?)
    // 4) losingCaps (?)
    // 5) all other, sorted by history heuristic

    std::vector<CMove> allMoves;
    auto movelist = board.legalMoves();
    for (int i = 0; i < movelist.size(); i++)
    {
        // sort move into correct bucket
        CMove mv = movelist[i];
        u64 dest = mv.getDest();
        if (mv == refMove)
            hashMoves.push_back(mv);

        else if (dest & occ)
        {
            int see = board.see(mv);
            if (see > 0)
                posCaptures.push_back(mv);
            else if (see == 0)
                eqCaptures.push_back(mv);
            else
                negCaptures.push_back(mv);
        }

        else if (kTable.contains(mv, plyCount))
            heuristics.push_back(mv);
        else if (cTable.contains(lastMove, mv, board.turn()))
            heuristics.push_back(mv);
        else
            other.push_back(mv);
    }
    numPositiveMoves = posCaptures.size() + hashMoves.size() + heuristics.size();
    allMoves.reserve(numPositiveMoves + eqCaptures.size() + other.size() +
                     negCaptures.size());
    // history sort
    Color tn = board.turn();
    for (CMove mv : other)
        otherWScore.push(MoveScoreTuple(mv, hTable.get(mv, tn)));

    allMoves.insert(allMoves.end(), negCaptures.begin(), negCaptures.end());

    while (!otherWScore.empty())
        allMoves.push_back(otherWScore.pop().move);

    allMoves.insert(allMoves.end(), eqCaptures.begin(), eqCaptures.end());
    allMoves.insert(allMoves.end(), heuristics.begin(), heuristics.end());
    allMoves.insert(allMoves.end(), posCaptures.begin(), posCaptures.end());
    allMoves.insert(allMoves.end(), hashMoves.begin(), hashMoves.end());
    return allMoves;
}

Score AI::alphaBetaSearch(Board &board, int depth, int plyCount, Score alpha,
                          Score beta, std::atomic<bool> &stop, int &count,
                          NodeType myNodeType, bool isSave)
{
    count++;

    GameStatus status = board.status();
    TableNode node(board, depth, myNodeType);

    if (status != GameStatus::Playing)
    {
        Score score;
        if (status == GameStatus::WhiteWin || status == GameStatus::BlackWin)
            score = SCORE_MIN + board.dstart();
        else if (status == GameStatus::Stalemate ||
                 status == GameStatus::Draw)
            score = 0;
        else
            score = AI::flippedEval(board);
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
                MiniTableBucket *currentPVNode = pvTable.find(board.zobrist());
                if (currentPVNode != pvTable.end())
                {
                    if (currentPVNode->depth < depth)
                    {
                        board.makeMove(refMove);
                        MiniTableBucket *childPVNode = pvTable.find(board.zobrist());
                        board.unmakeMove();
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

    CMove lastMove = board.lastMove();

    u64 occ = board.occupancy();

    bool nullWindow = false;
    bool raisedAlpha = false;

    int numPositiveMoves;
    auto moves = generateMovesOrdered(board, refMove, plyCount, numPositiveMoves);
    int movesSearched = 0;

    while (!moves.empty())
    {
        CMove fmove = moves.back();
        moves.pop_back();

        board.makeMove(fmove);

        int subdepth = depth - 1;
        if (board.isCheck())
            subdepth = depth; // Check ext
        Score score;
        if (nullWindow)
        {
            score = -AI::zeroWindowSearch(board, subdepth, plyCount + 1, -alpha,
                                          stop, count, All);
            if (score > alpha)
                score =
                    -AI::alphaBetaSearch(board, subdepth, plyCount + 1, -beta,
                                         -alpha, stop, count, PV, isSave);
        }
        else
        {
            score = -AI::alphaBetaSearch(board, subdepth, plyCount + 1, -beta,
                                         -alpha, stop, count, PV, isSave);
            nullWindow = true;
        }

        board.unmakeMove();
        movesSearched++;

        if (stop)
            return alpha;

        if (score >= beta)
        { // our move is better than beta, so this node is cut
            node.nodeType = Cut;
            node.bestMove = fmove;
            table.insert(node, beta);

            if (fmove.getDest() & ~occ) //don't update if capture, cause the move will likely not be an option in the future
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
                board.makeMove(mv);
                mc++;
            }
            else
            {
                depth = k;
                break;
            }
        }
        for (int k = 0; k < mc; k++)
            board.unmakeMove();

        pvTable.insert(node.hash, depth, &movelist);
    }
    return alpha;
}

//search instead with smaller window to try to save time.
Score AI::zeroWindowSearch(Board &board, int depth, int plyCount, Score beta,
                           std::atomic<bool> &stop, int &count,
                           NodeType myNodeType)
{
    count++;

    Score alpha = beta - 1;

    NodeType childNodeType = myNodeType == Cut ? All : Cut;

    bool nullmove = true;
    bool lmr = true;
    bool futilityPrune = true;

    GameStatus status = board.status();
    TableNode node(board, depth, myNodeType);

    if (status != GameStatus::Playing)
    {
        Score score;
        if (status == GameStatus::WhiteWin || status == GameStatus::BlackWin)
            score = SCORE_MIN + board.dstart();

        else if (status == GameStatus::Stalemate ||
                 status == GameStatus::Draw)
            score = 0;

        else
            score = AI::flippedEval(board);

        if (score < alpha)
            return alpha;

        else if (score > beta)
            return beta;

        return score;
    }

    if (depth <= 0)
    {
        Score score =
            quiescence(board, depth, plyCount, alpha, beta, stop, count, 0);
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
    bool nodeIsCheck = board.isCheck();
    CMove lastMove = board.lastMove();
    int occCount = hadd(occ);

    // NULL MOVE PRUNE
    int rNull = 3;
    if (nullmove && (!nodeIsCheck) && lastMove.notNull() && (occCount > 12))
    {
        CMove mv = CMove::NullMove();
        board.makeMove(mv);
        Score score =
            -AI::zeroWindowSearch(board, depth - 1 - rNull, plyCount + 1,
                                  1 - beta, stop, count, Cut);
        board.unmakeMove();
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
        fscore = AI::flippedEval(board) + 900;

    int movesSearched = 0;

    int numPositiveMoves;
    auto moves = generateMovesOrdered(board, refMove, plyCount, numPositiveMoves);
    numPositiveMoves = max(4, numPositiveMoves);
    int moveCount = moves.size();

    while (!moves.empty())
    {
        CMove fmove = moves.back();
        moves.pop_back();

        if (futilityPrune && (depth == 1) && (fmove != refMove) && (!nodeIsCheck) &&
            (fscore < alpha) && (fmove.getDest() & ~occ) &&
            (!board.isCheckingMove(fmove)))
        {
            // skip this move
            continue;
        }

        bool isCapture = fmove.getDest() & occ;
        bool isPawnMove =
            fmove.getSrc() & (board.bitboard[piece::white::pawn] & board.bitboard[piece::black::pawn]);
        bool isReduced = false;

        board.makeMove(fmove);

        int subdepth = depth - 1;
        if (board.isCheck())
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

        Score score = -AI::zeroWindowSearch(board, subdepth, plyCount + 1,
                                            -alpha, stop, count, childNodeType);

        // LMR here
        if (isReduced && score >= beta)
        {
            // re-search
            subdepth = depth - 1;
            score = -AI::zeroWindowSearch(board, subdepth, plyCount + 1, -alpha,
                                          stop, count, childNodeType);
        }

        board.unmakeMove();
        movesSearched++;

        if (stop) // if stopped in subcall, then we want to ignore it
            return alpha;

        if (score >= beta)
        { // our move is better than beta, so this node is cut
            node.nodeType = Cut;
            node.bestMove = fmove;
            table.insert(node, beta);

            if (fmove.getDest() & ~occ)
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