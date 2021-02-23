#include "ai/ai.hpp"

TranspositionTable<4194304> table;
MiniTable<131072> pvTable;
KillerTable kTable;
HistoryTable hTable;
CounterMoveTable cTable;

bool ai::isCheckmateScore(Score sc) { return SCORE_MAX - abs(sc) < 250; }

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
    //float pscoreEarly = std::accumulate(board.pieceScoreEarlyGame, board.pieceScoreEarlyGame + 6);
    //float pscoreLate = std::accumulate(board.pieceScoreLateGame, board.pieceLateEarlyGame + 6);

    //float wpScore = pscoreEarly * earlyWeight + pscoreLate * lateWeight; //weighted score for white

    //pscoreEarly = std::accumulate(board.pieceScoreEarlyGame + 6, board.pieceScoreEarlyGame + 12);
    //pscoreLate = std::accumulate(board.pieceScoreLateGame + 6, board.pieceLateEarlyGame + 12);

    //float bpScore = pscoreEarly * earlyWeight + pscoreLate * lateWeight; //weighted score for black

    // combine features
    score += materialEvaluation(board) * 10.0f; //change back after we get w/bpScore back up,.
    score += mcwhite - mcblack;
    //score += (wpScore - bpScore) * 10.0f; //why do we have both this and material eval?
    //score += board.kingSafety(White) * 5.0f * earlyWeight;
    //score -= board.kingSafety(Black) * 5.0f * earlyWeight;
    score += board.tropism(board.get_bitboard(piece::white::king), Black) * 0.03f * earlyWeight;
    score -= board.tropism(board.get_bitboard(piece::black::king), White) * 0.03f * earlyWeight;
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
//std::chrono::_V2::system_clock::time_point start,
CMove ai::rootMove(Board &board, int depth, std::atomic<bool> &stop, Score &outscore, CMove prevPv,
                   int &count, std::priority_queue<MoveScore> &prevScores)
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
            Score score = -quiescence(board, 0, 0, alpha, beta, stop, count, 0);
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
        int subtreeCount = 0;
        CMove mv = moves.pop_back();
        board.MakeMove(mv);

        Score score;
        if (nullWindow)
        {
            score = -ai::zeroWindowSearch(board, depth, 0, -alpha, stop,
                                          subtreeCount, All);
            if (score > alpha)
                score = -ai::alphaBetaSearch(board, depth, 0, -beta, -alpha,
                                             stop, subtreeCount, PV, true);
        }
        else
        {
            score = -ai::alphaBetaSearch(board, depth, 0, -beta, -alpha, stop,
                                         subtreeCount, PV, true);
            nullWindow = true;
        }

        board.UnmakeMove();

        count += subtreeCount;
        prevScores.push(MoveScore(mv, subtreeCount));

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
            table.insert(node, alpha);                  // new PV found
            sendPV(board, depth, chosen, count, alpha); //, start);
        }
    }
    if (!raisedAlpha)
    {
        uci::sendToUciClient("info string root fail-low");
        outscore = alpha;
    }

    return chosen;
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
            return SCORE_MIN; // + board.dstart();
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

//reconstruct PV
//, std::chrono::_V2::system_clock::time_point start
void ai::sendPV(Board &board, int depth, CMove pvMove, int nodeCount,
                Score score)
{
    std::string pv = " pv " + moveToUCIAlgebraic(pvMove);
    board.MakeMove(pvMove);
    MiniTableBucket *search = pvTable.find(board.hash());
    if (search != pvTable.end())
    {
        for (int k = 0; k < search->depth; k++)
        {
            CMove mv = search->seq[k];
            pv += " " + moveToUCIAlgebraic(mv);
        }
    }
    board.UnmakeMove();

    //auto stop = std::chrono::high_resolution_clock::now();
    //auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(
    //    stop - start); // or milliseconds
    //int time = duration.count();

    std::string scoreStr;
    if (ai::isCheckmateScore(score))
    {

        int dRoot = SCORE_MAX - abs(score);
        int v = dRoot; // - board.dstart();

        if (v % 2 == 0)
            v = -(v / 2);
        else
            v = (v + 1) / 2;

        uci::sendToUciClient("info string plies " + std::to_string(v));
        scoreStr = " score mate " + std::to_string(v);
    }
    else if (depth == 0)
        return;
    else
        scoreStr = " score cp " + std::to_string(score);

    //uci::sendToUciClient(
    //    "info depth " + std::to_string(max(1, depth)) + scoreStr + " time " +
    //    //std::to_string(time) + " nps " +
    //    std::to_string((int)((double)nodeCount / ((double)time / 1000.0))) +
    //    " nodes " + std::to_string(nodeCount) + " hashfull " +
    //    std::to_string(table.ppm()) + pv);
}

std::vector<CMove> ai::generateMovesOrdered(Board &board, CMove refMove,
                                            int plyCount,
                                            int &numPositiveMoves)
{
    // order moves for non-qsearch
    u64 occ = board.occupancy();
    //ai::LazyMovegen movegen(board.occupancy(board.turn()), board.attackMap);

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

    CMove lastMove = board.last_move();

    // priority:
    // 0) hashmove (1)
    // 1) winning caps (?)
    // 2) heuristic moves: killer and counter move (2)
    // 3) equal caps (?)
    // 4) losingCaps (?)
    // 5) all other, sorted by history heuristic

    std::vector<CMove> allMoves;
    auto movelist = board.legal_moves();
    for (int i = 0; i < movelist.size(); i++)
    {
        // sort move into correct bucket
        CMove mv = movelist[i];
        u64 dest = mv.dest();
        if (mv == refMove)
            hashMoves.push_back(mv);

        else if (dest & occ) //If the move is a capture we check if we will wind up winning or losing material.
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
    std::priority_queue<MoveScore> otherWScore;

    for (CMove mv : other)
        otherWScore.push(MoveScore(mv, hTable.get(mv, tn)));

    while (!otherWScore.empty())
    {
        allMoves.push_back(otherWScore.top().mv);
        otherWScore.pop();
    }

    allMoves.insert(allMoves.end(), negCaptures.begin(), negCaptures.end());
    allMoves.insert(allMoves.end(), eqCaptures.begin(), eqCaptures.end());
    allMoves.insert(allMoves.end(), heuristics.begin(), heuristics.end());
    allMoves.insert(allMoves.end(), posCaptures.begin(), posCaptures.end());
    allMoves.insert(allMoves.end(), hashMoves.begin(), hashMoves.end());
    return allMoves;
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
            score = SCORE_MIN; //+ board.dstart();
        else if (status == board::Status::Stalemate ||
                 status == board::Status::Draw)
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

    int numPositiveMoves;
    auto moves = board.legal_moves(); //generateMovesOrdered(board, refMove, plyCount, numPositiveMoves);
    int movesSearched = 0;

    while (!moves.is_empty())
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
            score = SCORE_MIN; //+ board.dstart();

        else if (status == board::Status::Stalemate ||
                 status == board::Status::Draw)
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

    int numPositiveMoves;
    auto moves = board.legal_moves();
    //std::vector<CMove> moves = generateMovesOrdered(board, refMove, plyCount, numPositiveMoves);
    //numPositiveMoves = max(4, numPositiveMoves);
    int moveCount = moves.size();

    while (!moves.is_empty())
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
