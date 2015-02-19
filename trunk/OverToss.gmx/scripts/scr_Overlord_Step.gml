USE = device_mouse_check_button_pressed(0, mb_left);
if (USE)
{
    global.check = true;
}
else
{
    global.check = false;
}

if (global.pState == ANGLE_PRESS) // if pState allows the angle pointer
{
    instance_create(view_xview[0]+192, view_yview[0]+320,obj_angle_pointer); // create angle pointer
    instance_create(view_xview[0]+192, view_yview[0]+320,obj_angle); // create angle background
    global.pState = 0; // stops future execution
}

if (global.pState == POWER_PRESS) // if pState allows the power pointer
{
    instance_create(view_xview[0]+192, view_yview[0]+480,obj_power_pointer); // create power pointer
    instance_create(view_xview[0]+192, view_yview[0]+480,obj_power); // create power pointer
    global.pState = 0; // stops future execution
}
if (global.pState == GAME)
{
    if (!global.ballExist)
    {
    instance_create(obj_ballStart.x,obj_ballStart.y,obj_ball); // create the ball on desired position
    global.ballExist = true;
    }
    if (x - obj_wpnPos.x >= 556000)
    {
        global.OP = true;
    }
}

check_wpn();
