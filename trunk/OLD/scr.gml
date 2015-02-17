#define debug
textString = string(argument0);
textX = x + 2;
textY = y + 2;

if (global.Debug)
{
    draw_text(textX, textY, argument1 + ": " + textString);
}
#define SCR_Loader_Create
// Any global variables goes here

global.Debug = false;




alarm[0] = room_speed;
#define SCR_Loader_Alarm0
// Change room after loading
#define SCR_Loader_Step
DEBUG = keyboard_check_pressed(ord("D"));

if (DEBUG)
{
    global.Debug = true;
}
#define SCR_Clicker_Create
mouse_In = false;

tapHold = false;
tapRelease = false;
#define SCR_Clicker_Left_Button
if (mouseIn)
{
    tapHold = true;
    image_xscale = 0.6;
    image_yscale = image_xscale;
}
#define SCR_Clicker_Left_Release
if (mouseIn)
{
    tapHold = false;
    tapRelease = true;
//    event_user(0); // (Behavior for button)
}
#define SCR_Clicker_Draw
draw_self();

if (image_xscale < 1) { image_xscale += 0.05; }

else if (image_xscale > 1) { image_xscale = 1; }

image_yscale = image_xscale;

debug(image_xscale, "scaleX");
