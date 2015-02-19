if (global.wpnInUse == 1 && !global.OP)
{
    if (global.optInUse == 1) // 1 to 3 / 1 = Lck / 2 = Pwr / 3 = Hit
    {
    global.fLuck = 25;
    global.fPower = 15;
    global.fHit = 15;
    }
    if (global.optInUse == 2)
    {
    global.fLuck = 15;
    global.fPower = 25;
    global.fHit = 15;
    }
    if (global.optInUse == 3)
    {
    global.fLuck = 15;
    global.fPower = 15;
    global.fHit = 25;
    }
}

if (global.wpnInUse == 2 && !global.OP)
{
        if (global.optInUse == 1)
    {
    global.fLuck = 40;
    global.fPower = 25;
    global.fHit = 25;
    }
    if (global.optInUse == 2)
    {
    global.fLuck = 25;
    global.fPower = 40;
    global.fHit = 25;
    }
    if (global.optInUse == 3)
    {
    global.fLuck = 25;
    global.fPower = 25;
    global.fHit = 40;
    }
}

if (global.wpnInUse == 3 && !global.OP)
{
        if (global.optInUse == 1)
    {
    global.fLuck = 60;
    global.fPower = 40;
    global.fHit = 40;
    }
    if (global.optInUse == 2)
    {
    global.fLuck = 40;
    global.fPower = 60;
    global.fHit = 40;
    }
    if (global.optInUse == 3)
    {
    global.fLuck = 40;
    global.fPower = 40;
    global.fHit = 60;
    }
}

if (global.wpnInUse == 4 && !global.OP)
{
        if (global.optInUse == 1)
    {
    global.fLuck = 80;
    global.fPower = 60;
    global.fHit = 60;
    }
    if (global.optInUse == 2)
    {
    global.fLuck = 60;
    global.fPower = 80;
    global.fHit = 60;
    }
    if (global.optInUse == 3)
    {
    global.fLuck = 60;
    global.fPower = 80;
    global.fHit = 60;
    }
}

if (global.wpnInUse == 5 && !global.OP)
{
    if (global.optInUse == 1)
    {
    global.fLuck = 100;
    global.fPower = 80;
    global.fHit = 80;
    }
    if (global.optInUse == 2)
    {
    global.fLuck = 80;
    global.fPower = 100;
    global.fHit = 80;
    }
    if (global.optInUse == 3)
    {
    global.fLuck = 80;
    global.fPower = 80;
    global.fHit = 100;
    }
}

if (global.OP)
{
    if (global.optInUse == 1)
    {
    global.fLuck = 100;
    global.fPower = 100;
    global.fHit = 100;
    }
    if (global.optInUse == 2)
    {
    global.fLuck = 100;
    global.fPower = 100;
    global.fHit = 100;
    }
    if (global.optInUse == 3)
    {
    global.fLuck = 100;
    global.fPower = 100;
    global.fHit = 100;
    }
}