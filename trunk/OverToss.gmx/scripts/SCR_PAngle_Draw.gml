draw_sprite_ext(SPR_PAngle_BKG, 0, x, y, 1, 1, 0, c_white, 1); // Draw the pointer background
    
draw_sprite_ext(SPR_PAngle, 0, initX, initY, 1, 1, startPos, c_white, 1); // Draw the pointer

while (!Used) // While I don't tap that screen
{
    initX += numSpeed; // pointer moves at a set speed
    
    if (initX <= (x - sprite_get_width(SPR_PPointer_BKG)/2) || initX >= (x + sprite_get_width(SPR_PPointer_BKG)/2))
    {
        numSpeed = - numSpeed;
    }
    
    if (global.check)
    {
        Used = true;
        instance_create(OBJ_PPower_StartPos.x, OBJ_PPower_StartPos.y, OBJ_Power_Pointer); // Proceed to next step
    }
}
debug(numSpeed, "Speed");
