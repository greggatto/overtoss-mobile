if (room == Menus)
{
    if (image_index == 0)
    {
        image_blend = c_white;
    }
    
    else if (image_index == 1)
    {
        if (!global.wpn2)
        {
            image_blend = c_dkgray;
        }
        else
            image_blend = c_white;
    }
    
    else if (image_index == 2)
    {
        if (!global.wpn3)
        {
            image_blend = c_dkgray;
        }
        else
            image_blend = c_white;
    }
    
    else if (image_index == 3)
    {
        if (!global.wpn4)
        {
            image_blend = c_dkgray;
        }
        else
            image_blend = c_white;
    }
    
    else if (image_index == 4)
    {
        if (!global.wpn5)
        {
            image_blend = c_dkgray;
        }
        else
            image_blend = c_white;
    }
}
draw_self();
