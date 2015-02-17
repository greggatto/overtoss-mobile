textString = string(argument0);
textX = x + 2;
textY = y + 2;

if (global.Debug)
{
    draw_text(textX, textY, argument1 + ": " + textString);
}
