/*

Contains information about the player's Overlord

=========== Stats ===========

PlayerPower = 0;
PlayerPrecision = 0;
PlayerKarma = 0;

=========== Overlords ===========

Each Overlord have different stats, have a script to decide what is the stat being used
Much like a function, like:

Calling function:
{
    PlayerStats(Mordekaiser);
}

PlayerStats(argument0) functioning:
{
    switch argument0
    {
        case Mordekaiser;
            PlayerPower = 99;
            PlayerPrecision = 99;
            PlayerKarma = 99;
        break;
        
        case Flying Penguin;
            PlayerPower = 10;
            PlayerPrecision = 0;
            PlayerKarma = 30;
        break;
        
        case BuRnny;
            PlayerPower = 50;
            PlayerPrecision = 30;
            PlayerKarma = 2;
        break;
    }
}
