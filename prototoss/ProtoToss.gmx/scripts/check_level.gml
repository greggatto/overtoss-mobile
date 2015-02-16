temp = global.pEXP - (411 * global.pLevel);

if (global.pEXP >= 411 && global.pLevel == 1)
{
    global.pEXP = temp;
    global.pLevel = 2;
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 2 && global.pLevel == 2)
{
    global.pEXP = temp;
    global.pLevel = 3;
    global.wpn2 = true;
    show_message("New weapon unlocked! Go on EQUIP to change it");
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 3 && global.pLevel == 3)
{
    global.pEXP = temp;
    global.pLevel = 4;
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 4 && global.pLevel == 4)
{
    global.pEXP = temp;
    global.pLevel = 5;
    global.wpn3 = true;
    show_message("New weapon unlocked! Go on EQUIP to change it");
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 5 && global.pLevel == 5)
{
    global.pEXP = temp;
    global.pLevel = 6;
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 6 && global.pLevel == 6)
{
    global.pEXP = temp;
    global.pLevel = 7;
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 7 && global.pLevel == 7)
{
    global.pEXP = temp;
    global.pLevel = 8;
    global.wpn4 = true;
    show_message("New weapon unlocked! Go on EQUIP to change it");
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 8 && global.pLevel == 8)
{
    global.pEXP = temp;
    global.pLevel = 9;
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
}

else if (global.pEXP >= 411 * 9 && global.pLevel == 9)
{
    global.pEXP = temp;
    global.pLevel = 10;
    global.wpn5 = true;
    show_message("New weapon unlocked! Go on EQUIP to change it");
    instance_create(view_xview[1] + view_wview[1]/2, view_yview[1] + view_hview[1]/2, obj_lvlUp);
    show_message("Congratz, you have reached maximum level!");
}
