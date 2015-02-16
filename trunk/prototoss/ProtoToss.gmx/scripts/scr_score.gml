eEXP = global.bDist/2; // EXP earned in this toss

if (global.pEXP < eEXP)
{
    global.pEXP += 1;
    check_level(); // Check exp and if it has enough, level player up
}

//global.pEXP += eEXP; // Total EXP
eDist = global.bDist;
eY = global.bY;
