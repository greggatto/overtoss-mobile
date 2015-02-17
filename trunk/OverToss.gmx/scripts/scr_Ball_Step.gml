global.bDist = x - obj_wpnPos.x;

if (global.bDist > global.maxD)
    global.maxD = global.bDist;

if (room_height - y - sprite_height/2 > global.maxH)
    global.maxH = room_height - y - sprite_height/2;


global.bY = room_height - y - sprite_height/2;

if (speed <= 0.4)
{
    global.pState = 0;
    global.ballExist = false;
   // global.dEXP = global.pEXP;
    global.pEXP += global.bDist/50;
    //global.reqEXP = 1;
    room_goto(Menus);
    instance_destroy();
}

if (global.BURST)
{
    motion_add(global.burstDir, global.burstFrc);
    global.BURST = false;
}
