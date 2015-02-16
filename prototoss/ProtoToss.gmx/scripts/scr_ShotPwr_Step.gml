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
