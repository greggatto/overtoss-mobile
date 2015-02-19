if (myN == 0) // Start Screen to Game
{
    view_visible[0] = false;
    view_visible[1] = true;
    global.pState = 1;
    room_goto(MainLevel);
}
if (myN == 1) // Start Screen to Info
{
    view_visible[0] = false;
    view_visible[3] = true;
}
if (myN == 2) // Score to Wpns
{
    view_visible[1] = false;
    view_visible[2] = true;
}
if (myN == 3) // Score to Game
{
    room_goto(MainLevel);
    global.pState = 1;
}
if (myN == 4) // Wpns to Score
{
    view_visible[2] = false;
    view_visible[1] = true;
}
if (myN == 5) // quit game from Menu
{
    game_end();
}
if (myN == 6) // info to Start
{
    view_visible[3] = false;
    view_visible[0] = true;
}
if (myN == 7) // Score to Start
{
    view_visible[1] = false;
    view_visible[0] = true;
}