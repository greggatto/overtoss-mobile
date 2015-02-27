///MinionLaunch(angle, power);

global.GameState = INGAME;

var Angle = argument0; // Angle of launch
var Power = argument1; // Power of launch

var crit = 1;
var newPower = Power; // Add some math to increase the power based on global.PlayerPower

if (irandom(global.PlayerKarma) >= global.PlayerKarma * 0.5) // generic chance thingy for critical
{
    crit = 1.5; // Critical Multiplier
}

var finalPower = newPower * crit; // Final value based on critical multiplier and Power

with (OBJ_Minion)
{
    motion_set(Angle, finalPower);
    gravity = 0.5; // Add some math to reduce this based on global.PlayerPrecision
}
