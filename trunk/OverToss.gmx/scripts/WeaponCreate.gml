///WeaponCreate(weapon);

var currentWpn = argument0;

switch currentWpn
{
    case STICK:
        Power = 5;
        Precision = 5;
        Karma = 5;
    break;
    case BAT:
        Power = 6;
        Precision = 6;
        Karma = 6;
    break;
    case CLUB:
        Power = 7;
        Precision = 7;
        Karma = 7;
    break;
    case RACKET:
        Power = 8;
        Precision = 8;
        Karma = 8;
    break;
    case GOLF:
        Power = 9;
        Precision = 9;
        Karma = 9;
    break;
    case DILDO:
        Power = 10;
        Precision = - 10;
        Karma = 10;
    break;
}

sprite_index = currentWpn;

var newWpn = instance_create(OBJ_Weapon_StartPos.x, OBJ_Weapon_StartPos.y, OBJ_Weapon);
with (newWpn)
{
    PlayerPower += Power;
    PlayerPrecision += Precision;
    PlayerKarma += Karma;
}
