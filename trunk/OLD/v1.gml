#define scr_Overlord_Step
USE = mouse_check_button_pressed(mb_left);
if (USE)
{
    global.check = true;
}
else
{
    global.check = false;
}

if (global.pState == 1) // if pState allows the angle pointer
{
    instance_create(view_xview[0]+192, view_yview[0]+320,obj_angle_pointer); // create angle pointer
    instance_create(view_xview[0]+192, view_yview[0]+320,obj_angle); // create angle background
    global.pState = 0; // stops future execution
}

if (global.pState == 2) // if pState allows the power pointer
{
    instance_create(view_xview[0]+192, view_yview[0]+480,obj_power_pointer); // create power pointer
    instance_create(view_xview[0]+192, view_yview[0]+480,obj_power); // create power pointer
    global.pState = 0; // stops future execution
}
if (global.pState == 3)
{
    if (!global.ballExist)
    {
    instance_create(obj_ballStart.x,obj_ballStart.y,obj_ball); // create the ball on desired position
    global.ballExist = true;
    }
    if (x - obj_wpnPos.x >= 556000)
    {
        global.OP = true;
    }
}

check_wpn();
#define scr_variables
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
#define scr_mBars_Draw
draw_set_color(c_orange);
draw_set_font(fnt_menu);

if (room == Menus)
{
    if (view_current == 1)
    {
       // eEXP = global.bDist/120; // EXP earned in this toss
        eDist = global.bDist;
        eY = global.maxH;
           
        /*if (global.reqEXP < eEXP)
        {
            global.dEXP += (global.reqEXP/global.reqEXP);
            global.reqEXP ++;
        }*/
        
        check_level(); // Check exp and if it has enough, level player up
        
        draw_text(1686, 203, string(round(eDist)));
        draw_text(1601, 288, string(round(eY)));
        draw_text(2186, 203, string(round(global.pLevel)));
        
        if (global.pLevel == 10)
            draw_rectangle(1969, 277, 1969 + 411, 336,false); //y: 59, x: 411 // Level, EXP
        else
            draw_rectangle(1969, 277, 1969 + (global.pEXP/global.pLevel), 336,false); //y: 59, x: 411 // Level, EXP
    }
    
    if (view_current == 2)
    {
        // Luck
        draw_rectangle(941, 1295, 941 + (global.fLuck * 2.53), 1333,false); // 253x 38y
        
        // Power
        draw_rectangle(941, 1364, 941 + (global.fPower * 2.53), 1402,false); // 253x 38y
        
        // Hit
        draw_rectangle(941, 1428, 941 + (global.fHit * 2.53), 1465,false); // 253x 38y
    }
    
    if (view_current == 3)
    {
        draw_text(1616, 1039, string(round(global.pLevel)));
    
        draw_rectangle(1313, 1163, 1313 + (global.pEXP/global.pLevel), 1222,false); //y: 59, x: 411 // Level, EXP
        
        if (global.optInUse == 1)
            draw_text(2064, 1400, "IRISH");
        else if (global.optInUse == 2)
            draw_text(2064, 1400, "BRUTAL");
        else if (global.optInUse == 3)
            draw_text(2064, 1400, "SNIPER");
    }


}
#define scr_HUD
draw_set_color(c_white);
draw_set_font(fnt_hud);

draw_text(view_xview[0]+50, view_yview[0]+50, "Height: " + string(round(global.bY)));
draw_text(view_xview[0] + view_wview[0]/2, view_yview[0]+50, "Distance: " + string(round(global.bDist)));

// show height
// show distance
#define scr_ShotDir_Create
dMin = 10; // min angle
dMax = 85; // max angle
dSpeed = room_speed/(1.5 + (global.fHit * 0.055)); // pointer speed
image_angle = 15; // initial image angle
dDa = false; // limit use to one
#define scr_ShotDir_Step
image_angle += dSpeed; // pointer moves

if (image_angle >= dMax || image_angle <= dMin) // pointer between min angle and max angle
{
    dSpeed = - dSpeed; // change direction in which pointer moves
}

if (global.pState == 3) // if pState is in game
{
    instance_destroy(); // destroy this pointer
}  

else if (global.check && !dDa) // if it can be activated and clicked
{
    global.bDir = image_angle; // save pointer direction for the ball toss
    dSpeed = 0; // stops pointer
    global.pState = 2; // change pState so the Power can be decided
    dDa = true; // can't use this until next time this pointer is created
}
#define scr_ShotPwr_Create
pLimit = 100; // how far up and down the pointer can go
pSpeed = room_speed/(1.5 + (global.fHit * 0.055)); // pointer speed
iY = y; // saves pointer initial position
#define scr_ShotPwr_Step
y += pSpeed; // pointer moves
if (y <= iY || y >= iY + pLimit) // pointer initial pos / 100 under initial pos (y)
{
    pSpeed = - pSpeed; // change direction in which pointer moves
}

if (global.pState == 3) // if pState is in game
{
    instance_destroy(); // destroy this pointer
}

else if (global.check) // if clicked
{
    global.bPwr = ((iY + 100) - y)/2; // pointer in relation to the bar (0 to 100) in a scale from 0 to 100
    pSpeed = 0; // stops pointer
    global.pState = 3; // change pState to Game mode
}
#define scr_Burst_Create
alarm[0] = room_speed/2 + (global.fHit*0.45);
#define scr_Burst_Step
x = view_xview[0] + view_wview[0]/2;
y = view_yview[0] + view_hview[0]/2;
// Keep it centered on screen
#define scr_Burst_Click
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
#define scr_Ball_Create
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
#define scr_Ball_Step
global.bDist = x - obj_wpnPos.x;

if (global.bDist > global.maxD)
    global.maxD = global.bDist;

if (room_height - y - sprite_height/2 > global.maxH)
    global.maxH = room_height - y - sprite_height/2;


global.bY = room_height - y - sprite_height/2;

if (speed <= 0.4)
{
    global.pState = 0;
    global.ballExist = false;
   // global.dEXP = global.pEXP;
    global.pEXP += global.bDist/50;
    //global.reqEXP = 1;
    room_goto(Menus);
    instance_destroy();
}

if (global.BURST)
{
    motion_add(global.burstDir, global.burstFrc);
    global.BURST = false;
}
#define scr_Ball_Collision
move_bounce_all(false);
effect_create_below(ef_firework,x, y + sprite_height/2, 1, c_red);

speed = speed * 0.5;
#define scr_ball_alarm0_Burst_check
chance = (global.fLuck * 0.8);

randChance = (global.fLuck * 0.2) + random(chance);

if (randChance >= global.fLuck * 0.6)
{
    instance_create(view_xview[0] + view_wview[0]/2, view_yview[0] + view_hview[0]/2, obj_Burst);
    alarm[0] = room_speed*5 - (global.fHit);
}
else
{
    alarm[0] = room_speed*4 - (global.fHit);
}
#define check_level
temp = global.pEXP - (411 * global.pLevel);

if (global.pEXP >= 411 && global.pLevel == 1)
{
    global.pEXP = temp;
    global.pLevel = 2;
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 2 && global.pLevel == 2)
{
    global.pEXP = temp;
    global.pLevel = 3;
    global.wpn2 = true;
    show_message("New weapon unlocked! Go on EQUIP to change it");
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 3 && global.pLevel == 3)
{
    global.pEXP = temp;
    global.pLevel = 4;
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 4 && global.pLevel == 4)
{
    global.pEXP = temp;
    global.pLevel = 5;
    global.wpn3 = true;
    show_message("New weapon unlocked! Go on EQUIP to change it");
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 5 && global.pLevel == 5)
{
    global.pEXP = temp;
    global.pLevel = 6;
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 6 && global.pLevel == 6)
{
    global.pEXP = temp;
    global.pLevel = 7;
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 7 && global.pLevel == 7)
{
    global.pEXP = temp;
    global.pLevel = 8;
    global.wpn4 = true;
    show_message("New weapon unlocked! Go on EQUIP to change it");
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 8 && global.pLevel == 8)
{
    global.pEXP = temp;
    global.pLevel = 9;
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 9 && global.pLevel == 9)
{
    global.pEXP = temp;
    global.pLevel = 10;
    global.wpn5 = true;
    show_message("New weapon unlocked! Go on EQUIP to change it");
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
    show_message("Congratz, you have reached maximum level!");
}
#define check_wpn
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
#define scr_click
if (myN == 0) // Start Screen to Game
{
    view_visible[0] = false;
    view_visible[1] = true;
    global.pState = 1;
    room_goto(MainLevel);
}
if (myN == 1) // Start Screen to Info
{
    view_visible[0] = false;
    view_visible[3] = true;
}
if (myN == 2) // Score to Wpns
{
    view_visible[1] = false;
    view_visible[2] = true;
}
if (myN == 3) // Score to Game
{
    room_goto(MainLevel);
    global.pState = 1;
}
if (myN == 4) // Wpns to Score
{
    view_visible[2] = false;
    view_visible[1] = true;
}
if (myN == 5) // quit game from Menu
{
    game_end();
}
if (myN == 6) // info to Start
{
    view_visible[3] = false;
    view_visible[0] = true;
}
if (myN == 7) // Score to Start
{
    view_visible[1] = false;
    view_visible[0] = true;
}
#define scr_doodsCreate
image_speed = 0;
#define scr_doodsStep
if (global.pState == 3)
    image_index = 1;
#define scr_shieldCreate
if (global.optInUse == 1)
    image_blend = c_green;
    
else if (global.optInUse == 2)
    image_blend = c_red;

else if (global.optInUse == 3)
    image_blend = c_blue;
    
draw_self();
#define scr_wpnCreate
image_speed = 0;

if (global.wpnInUse == 1)
    image_index = 0;

if (global.wpnInUse == 2)
    image_index = 1;
    
if (global.wpnInUse == 3)
    image_index = 2;
    
if (global.wpnInUse == 4)
    image_index = 3;
    
if (global.wpnInUse == 5)
    image_index = 4;

if (room == MainLevel)
    image_angle = 110;
else if (room == Menus)
    image_angle = 0;
#define scr_wpnStep
if (global.pState == 3)
{
    x = obj_wpnPos.x;
    y = obj_wpnPos.y;
    image_angle = 15;
}

if (room == Menus)
{
    if (place_meeting (mouse_x, mouse_y, obj_wpns))
    {
        if (mouse_check_button_pressed(mb_left))
        {
            if (image_index == 0 && global.wpn1)
            {
                global.wpnInUse = 1;
            }
            else if (image_index == 1 && global.wpn2)
            {
                global.wpnInUse = 2;
            }
            else if (image_index == 2 && global.wpn3)
            {
                global.wpnInUse = 3;
            }
            else if (image_index == 3 && global.wpn4)
            {
                global.wpnInUse = 4;
            }
            else if (image_index == 4 && global.wpn5)
            {
                global.wpnInUse = 5;
            }
        }
    }
}
#define scr_wpns_Draw
if (room == Menus)
{
    if (image_index == 0)
    {
        image_blend = c_white;
    }
    
    else if (image_index == 1)
    {
        if (!global.wpn2)
        {
            image_blend = c_dkgray;
        }
        else
            image_blend = c_white;
    }
    
    else if (image_index == 2)
    {
        if (!global.wpn3)
        {
            image_blend = c_dkgray;
        }
        else
            image_blend = c_white;
    }
    
    else if (image_index == 3)
    {
        if (!global.wpn4)
        {
            image_blend = c_dkgray;
        }
        else
            image_blend = c_white;
    }
    
    else if (image_index == 4)
    {
        if (!global.wpn5)
        {
            image_blend = c_dkgray;
        }
        else
            image_blend = c_white;
    }
}
draw_self();
