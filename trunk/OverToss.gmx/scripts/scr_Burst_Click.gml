var ranDir = random(2);
var extraDmg = global.fPower/10;

if (ranDir <=1)
{
    global.burstDir = 15;
}
else
{
    global.burstDir = 75;
}

global.burstFrc = 50 + (extraDmg * 1.2);

global.BURST = true;
instance_destroy();
