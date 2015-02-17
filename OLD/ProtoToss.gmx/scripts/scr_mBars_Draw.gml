draw_set_color(c_orange);
draw_set_font(fnt_menu);

if (room == Menus)
{
    if (view_current == 1)
    {
       // eEXP = global.bDist/120; // EXP earned in this toss
        eDist = global.bDist;
        eY = global.maxH;
           
        /*if (global.reqEXP < eEXP)
        {
            global.dEXP += (global.reqEXP/global.reqEXP);
            global.reqEXP ++;
        }*/
        
        check_level(); // Check exp and if it has enough, level player up
        
        draw_text(1686, 203, string(round(eDist)));
        draw_text(1601, 288, string(round(eY)));
        draw_text(2186, 203, string(round(global.pLevel)));
        
        if (global.pLevel == 10)
            draw_rectangle(1969, 277, 1969 + 411, 336,false); //y: 59, x: 411 // Level, EXP
        else
            draw_rectangle(1969, 277, 1969 + (global.pEXP/global.pLevel), 336,false); //y: 59, x: 411 // Level, EXP
    }
    
    if (view_current == 2)
    {
        // Luck
        draw_rectangle(941, 1295, 941 + (global.fLuck * 2.53), 1333,false); // 253x 38y
        
        // Power
        draw_rectangle(941, 1364, 941 + (global.fPower * 2.53), 1402,false); // 253x 38y
        
        // Hit
        draw_rectangle(941, 1428, 941 + (global.fHit * 2.53), 1465,false); // 253x 38y
    }
    
    if (view_current == 3)
    {
        draw_text(1616, 1039, string(round(global.pLevel)));
    
        draw_rectangle(1313, 1163, 1313 + (global.pEXP/global.pLevel), 1222,false); //y: 59, x: 411 // Level, EXP
        
        if (global.optInUse == 1)
            draw_text(2064, 1400, "IRISH");
        else if (global.optInUse == 2)
            draw_text(2064, 1400, "BRUTAL");
        else if (global.optInUse == 3)
            draw_text(2064, 1400, "SNIPER");
    }


}
