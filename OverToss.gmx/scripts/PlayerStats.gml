// Use this only when the Overlord is created

currentLord = argument0;

switch currentLord
{
    case Mordekaiser:
        PlayerPower = 99;
        PlayerPrecision = 99;
        PlayerKarma = 99;
    break;
    
    case FlyingPenguin:
        PlayerPower = 10;
        PlayerPrecision = 0;
        PlayerKarma = 30;
    break;
    
    case BuRnny:
        PlayerPower = 50;
        PlayerPrecision = 30;
        PlayerKarma = 2;
    break;
}

global.PlayerPower = PlayerPower; // Set the global Power
global.PlayerPrecision = PlayerPrecision; // Set the global Precision
global.PlayerKarma = PlayerKarma; // Set the global Karma
