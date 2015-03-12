DEBUG = keyboard_check_pressed(ord("D"));
PAUSE = keyboard_check_pressed(ord("P"));
USE = device_mouse_check_button_pressed(0, mb_left);

// Toggles Debug Mode
if (DEBUG)
{
    global.Debug = !global.Debug;
}

if (PAUSE)
{
    global.Pause = !global.Pause;
}

// Tap / mouse click
if (USE)
{
    global.check = true;
}
else
{
    global.check = false;
}
