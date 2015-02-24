
textString = string(argument0); // Value of the variable
variableName = argument1; // Name of the variable
textX = x + 2;
textY = y + 2;

if (global.Debug)
{
    draw_text(textX, textY, variableName + ": " + textString);
}
