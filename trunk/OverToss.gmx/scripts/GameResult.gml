///GameResult(distance, height);

//room_goto(RM_Result); // Shows summary screen

currentDistance = argument0; // Gets distance to check level
currentHeight = argument1; // Gets height to check level

global.PlayerEXP = currentDistance * (1 + currentHeight/currentDistance) / 2; // Current EXP

// Level Up check
if (global.PlayerEXP >= global.PlayerLevel * 1000)
{
    global.PlayerLevel += 1;
}
