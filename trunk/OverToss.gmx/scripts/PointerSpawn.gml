currentPointer = argument0

// Set speed and direction pointers
switch currentPointer
{
    case Angle:
        numMin = 0;   // Minimum angle
        numMax = 90;  // Maximum angle
        numSpeed = room_speed * 2/(playerPrecision * 0.5)   // Angle pointer speed
        startPos = ceil(mean(numMin, numMax));    // Set the start angle to be the average of the min and max angle
        image_angle = startPos;
    break;
    
    case Power:
        numMin = 0;   // Minimum power (%)
        numMax = 100; // Maximum power (%)
        numSpeed = room_speed * 2/(playerPrecision * 0.5);   // Power pointer speed
        startPos = x; // Set the start position to be the x of the background image of the power pointer
    break;
}
