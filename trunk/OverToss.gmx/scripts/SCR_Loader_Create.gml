// Any global variables goes here

global.Debug = false;
global.check = false; // tap / mouse click

// PLAYER
global.GameState = NULL; // NULL = 0 / ANGLE_PRESS = 1 / POWER_PRESS = 2 / INGAME = 3
global.PlayerLevel = 1; // Makes new stuff availiable
global.PlayerEXP = 0;
global.PlayerPower = 0; // Initial Launch and Over Impact strength
global.PlayerPrecision = 0; // Pointer Speed and Gravity Resistance
global.PlayerKarma = 0; // Spawn rate of objects and critical chance
// Array with upgrades, 8 characters long. 

// STORE
global.Gold = 0; // Player gold
global.Gems = 0; // Player gems
// Weapon array {INSTORE = 0, OWNED = 1, TEMP = 2}
// Minion Skin array {INSTORE = 0, OWNED = 1, TEMP = 2}
// Overlords array {INSTORE = 0, OWNED = 1, TEMP = 2}

alarm[0] = room_speed; // Change room after reloading
