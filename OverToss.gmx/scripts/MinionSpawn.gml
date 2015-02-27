///MinionSpawn(skin);

currentMinion = argument0

// Set values to 0 and select chosen skin
switch currentMinion
{
    case Classic:
        image_index = global.MinionSkin[0]; // Grab the skin name from the array of skins
        HorizontalDist = 0;
//        VerticalDist = OBJ_Player.y; // Initial heigth is the same as the player. 0 is the ground.
    break;
    
    case Rammus:
        image_index = global.MinionSkin[1]; // Grab the skin name from the array of skins
        HorizontalDist = 0;
//        VerticalDist = OBJ_Player.y; // Initial heigth is the same as the player. 0 is the ground.
    break;
}
