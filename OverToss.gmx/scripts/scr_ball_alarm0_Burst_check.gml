chance = (global.fLuck * 0.8);

randChance = (global.fLuck * 0.2) + random(chance);

if (randChance >= global.fLuck * 0.6)
{
    instance_create(view_xview[0] + view_wview[0]/2, view_yview[0] + view_hview[0]/2, obj_Burst);
    alarm[0] = room_speed*5 - (global.fHit);
}
else
{
    alarm[0] = room_speed*4 - (global.fHit);
}
