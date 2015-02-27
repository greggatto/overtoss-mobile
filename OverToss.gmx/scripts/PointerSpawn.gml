///PointerSpawn(pointer);

currentPointer = argument0

// Set speed and direction pointers
switch currentPointer
{
    case Angle:
        global.GameState = ANGLE_PRESS; // Angle pointer
        numMin = 0;   // Minimum angle
        numMax = 90;  // Maximum angle
        numSpeed = room_speed * 2/(playerPrecision * 0.5)   // Angle pointer speed
        startAngle = ceil(mean(numMin, numMax));    // Set the start angle to be the average of the min and max angle
    break;
    
    case Power:
        global.GameState = POWER_PRESS; // Power pointer
        numMin = x - sprite_get_width(SPR_PPower_BKG)/2; // Minimum power
        numMax = x + sprite_get_width(SPR_PPower_BKG)/2; // Maximum power
        numSpeed = room_speed * 2/(playerPrecision * 0.5);   // Power pointer speed
        startAngle = 0;
    break;
}

initX = x;
initY = y;
Used = false;
