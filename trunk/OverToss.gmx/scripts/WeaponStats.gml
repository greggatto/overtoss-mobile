currentWpn = argument0;

switch currentWpn
{
    case STICK:
        PlayerPower += 5;
        PlayerPrecision += 5;
        PlayerKarma += 5;
    break;
    case BAT:
        PlayerPower += 6;
        PlayerPrecision += 6;
        PlayerKarma += 6;
    break;
    case CLUB:
        PlayerPower += 7;
        PlayerPrecision += 7;
        PlayerKarma += 7;
    break;
    case RACKET:
        PlayerPower += 8;
        PlayerPrecision += 8;
        PlayerKarma += 8;
    break;
    case GOLF:
        PlayerPower += 9;
        PlayerPrecision += 9;
        PlayerKarma += 9;
    break;
    case DILDO:
        PlayerPower += 10;
        PlayerPrecision -= 10;
        PlayerKarma += 10;
    break;
}
