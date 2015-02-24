if (global.wpnInUse == STICK && !global.OP)
{
    if (global.optInUse == LUCK) // 1 to 3 / 1 = Lck / 2 = Pwr / 3 = Hit
    {
    global.fLuck = 25;
    global.fPower = 15;
    global.fHit = 15;
    }
    if (global.optInUse == POWER)
    {
    global.fLuck = 15;
    global.fPower = 25;
    global.fHit = 15;
    }
    if (global.optInUse == HIT)
    {
    global.fLuck = 15;
    global.fPower = 15;
    global.fHit = 25;
    }
}

if (global.wpnInUse == BAT && !global.OP)
{
    if (global.optInUse == LUCK)
    {
    global.fLuck = 40;
    global.fPower = 25;
    global.fHit = 25;
    }
    if (global.optInUse == POWER)
    {
    global.fLuck = 25;
    global.fPower = 40;
    global.fHit = 25;
    }
    if (global.optInUse == HIT)
    {
    global.fLuck = 25;
    global.fPower = 25;
    global.fHit = 40;
    }
}

if (global.wpnInUse == CLUB && !global.OP)
{
    if (global.optInUse == LUCK)
    {
    global.fLuck = 60;
    global.fPower = 40;
    global.fHit = 40;
    }
    if (global.optInUse == POWER)
    {
    global.fLuck = 40;
    global.fPower = 60;
    global.fHit = 40;
    }
    if (global.optInUse == HIT)
    {
    global.fLuck = 40;
    global.fPower = 40;
    global.fHit = 60;
    }
}

if (global.wpnInUse == RACKET && !global.OP)
{
    if (global.optInUse == LUCK)
    {
    global.fLuck = 80;
    global.fPower = 60;
    global.fHit = 60;
    }
    if (global.optInUse == POWER)
    {
    global.fLuck = 60;
    global.fPower = 80;
    global.fHit = 60;
    }
    if (global.optInUse == HIT)
    {
    global.fLuck = 60;
    global.fPower = 80;
    global.fHit = 60;
    }
}

if (global.wpnInUse == GOLF && !global.OP)
{
    if (global.optInUse == LUCK)
    {
    global.fLuck = 100;
    global.fPower = 80;
    global.fHit = 80;
    }
    if (global.optInUse == POWER)
    {
    global.fLuck = 80;
    global.fPower = 100;
    global.fHit = 80;
    }
    if (global.optInUse == HIT)
    {
    global.fLuck = 80;
    global.fPower = 80;
    global.fHit = 100;
    }
}

if (global.OP)
{
    if (global.optInUse == LUCK)
    {
    global.fLuck = 100;
    global.fPower = 100;
    global.fHit = 100;
    }
    if (global.optInUse == POWER)
    {
    global.fLuck = 100;
    global.fPower = 100;
    global.fHit = 100;
    }
    if (global.optInUse == HIT)
    {
    global.fLuck = 100;
    global.fPower = 100;
    global.fHit = 100;
    }
}