global.bDist = 0;
global.bY = 0;
global.reqEXP = 1;

var rand = random(global.fLuck); // Critical chance
var crit = 1; // initial Critical bonus
var extraDmg = global.fPower/10; // 

if (rand >= global.fLuck * 0.3) // if number is greater than 30% of the total luck, critical strike
{
    crit = 1.5; // new critical
}

global.ballExist = false;

finalDir = global.bDir;
finalPwr = global.bPwr/2 * extraDmg * crit;

motion_add(finalDir, finalPwr); // hit pwr
gravity = 0.55;

alarm[0] = room_speed*5;