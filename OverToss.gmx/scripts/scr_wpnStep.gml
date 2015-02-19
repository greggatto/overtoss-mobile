if (global.pState == GAME)
{
    x = obj_wpnPos.x;
    y = obj_wpnPos.y;
    image_angle = 15;
}

if (room == Menus)
{
    if (place_meeting (mouse_x, mouse_y, obj_wpns))
    {
        if (mouse_check_button_pressed(mb_left))
        {
            if (image_index == 0 && global.wpn1)
            {
                global.wpnInUse = 1;
            }
            else if (image_index == 1 && global.wpn2)
            {
                global.wpnInUse = 2;
            }
            else if (image_index == 2 && global.wpn3)
            {
                global.wpnInUse = 3;
            }
            else if (image_index == 3 && global.wpn4)
            {
                global.wpnInUse = 4;
            }
            else if (image_index == 4 && global.wpn5)
            {
                global.wpnInUse = 5;
            }
        }
    }
}
