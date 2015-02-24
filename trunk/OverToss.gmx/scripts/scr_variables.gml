// PLAYER
global.pState = NULL; // NULL = 0 / ANGLE_PRESS = 1 / POWER_PRESS = 2 / GAME = 3 / MENU = 4, others
global.pLevel = 1; // Player LVL
global.pEXP = 0; // Player XP
global.reqEXP = 1; // Gained EXP
global.dEXP = 0; // EXP being drawn

global.fLuck = 1; // Final Luck (Critical Hit / Event Chance)
global.fPower = 1; // Final Power (Launch Power / Event Power)
global.fHit = 1; // Final Hit (Pointer Speed / Event hit window)

// LAUNCH STATS
global.check = false;

//BURST EVENT STATS
global.burstDir = 0; // Burst angle
global.burstFrc = 0; // Burst force - add Motion
global.BURST = false;

// BALL
global.maxH = 0;
global.maxD = 0;
global.bDir = 0; // ball direction
global.bPwr = 0; // initial ball speed
global.bDist = 0; // Distance traveled by the Ball
global.bY = 0; // Altitude of ball
global.ballExist = false;

// WEAPONS
global.wpnInUse = STICK; // STICK = 1 / BAT = 2 / CLUB = 3 / RACKET = 4 / GOLF = 5
global.optInUse = POWER; // LUCK = 1 / POWER = 2 / HIT = 3
global.wpn1 = true; // For unlocked wpns
global.wpn2 = false;
global.wpn3 = false;
global.wpn4 = false;
global.wpn5 = false;
global.OP = false;