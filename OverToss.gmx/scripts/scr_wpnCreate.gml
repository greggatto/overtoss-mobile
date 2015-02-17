image_speed = 0;

if (global.wpnInUse == 1)
    image_index = 0;

if (global.wpnInUse == 2)
    image_index = 1;
    
if (global.wpnInUse == 3)
    image_index = 2;
    
if (global.wpnInUse == 4)
    image_index = 3;
    
if (global.wpnInUse == 5)
    image_index = 4;

if (room == MainLevel)
    image_angle = 110;
else if (room == Menus)
    image_angle = 0;
