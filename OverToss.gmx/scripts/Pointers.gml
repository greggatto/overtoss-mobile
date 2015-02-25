currentPointer = argument0

// Set speed and direction pointers
if(currentPointer == Angle)
{
    angleMin = 0;   // Minimum angle
    angleMax = 90;  // Maximum angle
    angleSpeed = room_speed/(1.5 +(playerPrecision * 0.055))    // Angle pointer speed
    image_angle = ceil(mean(angleMin,angleMax));    // Set initial pointer angle 
}
else if(currentPointer == Power)
{
    powerMin = 0;   // Minimum power level
    powerMax = 100; // Maximum power level
    powerSpeed = room_speed/(1.5 + (playerPrecision * 0.055));   // Power pointer speed
    powerMin = y;
}
