DEBUG = keyboard_check_pressed(ord("D"));
USE = device_mouse_check_button_pressed(0, mb_left);

// Toggles Debug Mode
if (DEBUG)
{
    global.Debug = true;
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
