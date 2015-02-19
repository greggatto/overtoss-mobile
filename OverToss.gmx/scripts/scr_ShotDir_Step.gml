image_angle += dSpeed; // pointer moves

if (image_angle >= dMax || image_angle <= dMin) // pointer between min angle and max angle
{
    dSpeed = - dSpeed; // change direction in which pointer moves
}

if (global.pState == GAME) // if pState is in game
{
    instance_destroy(); // destroy this pointer
}  

else if (global.check && !dDa) // if it can be activated and clicked
{
    global.bDir = image_angle; // save pointer direction for the ball toss
    dSpeed = 0; // stops pointer
    global.pState = POWER_PRESS; // change pState so the Power can be decided
    dDa = true; // can't use this until next time this pointer is created
}
