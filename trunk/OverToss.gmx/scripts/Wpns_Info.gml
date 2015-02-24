/*

Holds information about the selected, availiable and unlocked weapons

Selected = Current being used

Availiable = Can be purchased

Unlocked = Purchased, can be equiped


currentWpn = global.currentWpn;

unlockedWpns[] = {STICK, DILDO, ETC} // Array with unlocked weapons that can be equipped

availiableWpns[] = {BAT, CTR, ETC} // Array with weapons shown in the store that can be bought


============== Weapons Stats ==============

Create a function script that holds the information of each weapon

Example:

switch currentWpn
{
    case STICK:
        PlayerPower += 7;
        PlayerPrecision += 2;
        PlayerKarma -= 1;
    break;
    
    case DILDO:
        PlayerPower += 99;
        PlayerPrecision += 99;
        PlayerKarma += 99;
    break;
}
