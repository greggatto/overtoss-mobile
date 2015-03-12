// Any global variables goes here
global.Debug = false;
global.Pause = false; // If the game is paused or not
global.check = false; // tap / mouse click

// PLAYER
global.GameState = NULL; // NULL = 0 / ANGLE_PRESS = 1 / POWER_PRESS = 2 / INGAME = 3
global.PlayerLevel = 1; // Makes new stuff availiable
global.PlayerEXP = 0; // To level up
global.PlayerPower = 0; // Initial Launch and Over Impact strength
global.PlayerPrecision = 0; // Pointer Speed and Gravity Resistance
global.PlayerKarma = 0; // Spawn rate of objects and critical chance
// Stuff currently being used
global.InUseWeapon = BAT;
global.InUseMinion = CLASSIC;
global.InUseOverlord = CLASSIC;

// STORE
global.Gold = 0; // Player gold
global.Gems = 0; // Player gems

// ARRAYS

// Total number of upgrades in our game.
    upgds = 8;
// Total number of weapons in our game.
    wpns = 5;
// Total number of minion skins in our game.
    mins = 5;
// Total number of overlords in our game.
    lords = 5;

/*
    Upgrade List:
        For the 2nd line, use the following: {0 ~ 8} -> Upgrade Level
    
    Weapon, Minion, Overlord List:
        For the 2nd line, use the following: {LOCKED = 0, INSTORE = 1, TEMP = 2, OWNED = 3} -> State of item
*/

global.UpgradesList = ds_grid_create(upgds, 2); // Upgrade array

global.WeaponsList = ds_grid_create(wpns, 2);   // Weapon array

global.MinionList = ds_grid_create(mins, 2);    // Minion Skin array

global.OverlordList = ds_grid_create(lords, 2); // Overlords array

 // POST LOAD
alarm[0] = room_speed; // Change room
