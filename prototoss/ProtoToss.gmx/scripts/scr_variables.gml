// PLAYER
global.pState = 0; // 0 = Null / 1 = Angle press / 2 = Power press / 3 = Game / 4 = Menu, others
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
global.wpnInUse = 1; // 1 to 5
global.optInUse = 2; // 1 to 3 / 1 = Lck / 2 = Pwr / 3 = Hit
global.wpn1 = true;
global.wpn2 = false;
global.wpn3 = false;
global.wpn4 = false;
global.wpn5 = false;
global.OP = false;
