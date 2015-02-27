var cDist; // Current distance
var mDist; // Max distance so far
var cHeit; // Current height
var mHeit; // Max height so far

// If current distance is higher than the previous one recorded, update it
cDist = x - OBJ_Minion_StartPos.x;
    if (cDist > mDist) { mDist = cDist };
// If current height is higher than the previous one recorded, update it
cHeit = y;
    if (cHeit > mHeit) { mHeit = cHeit };

// If the "ball" stops, run the GameResult script
if (speed <= 0.4)
{
    global.GameState = NULL;
    GameResult(mDist, mHeit);   
}
