image_speed = 0;

if (global.wpnInUse == STICK)
    image_index = 0;

if (global.wpnInUse == BAT)
    image_index = 1;
    
if (global.wpnInUse == CLUB)
    image_index = 2;
    
if (global.wpnInUse == RACKET)
    image_index = 3;
    
if (global.wpnInUse == GOLF)
    image_index = 4;

if (room == MainLevel)
    image_angle = 110;
else if (room == Menus)
    image_angle = 0;
