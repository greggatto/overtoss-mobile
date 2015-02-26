draw_sprite_ext(SPR_PPower_BKG, 0, x, y, 1, 1, 0, c_white, 1); // Draw the pointer background
    
draw_sprite_ext(SPR_PPower, 0, initX, initY, 1, 1, startAngle, c_white, 1); // Draw the pointer

while (!Used) // While I don't tap that screen
{
    initX += numSpeed; // pointer moves at a set speed
    
    if (initX <= numMin || initX >= numMax)
    {
        numSpeed = - numSpeed;
    }
    
    if (global.check)
    {
        Used = true;
        MinionLaunch(OBJ_PAngle.LaunchAngle, LaunchPower);
    }
}
debug(numSpeed, "Speed");
