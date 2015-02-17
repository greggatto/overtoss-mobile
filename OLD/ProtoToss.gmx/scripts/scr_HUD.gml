draw_set_color(c_white);
draw_set_font(fnt_hud);

draw_text(view_xview[0]+50, view_yview[0]+50, "Height: " + string(round(global.bY)));
draw_text(view_xview[0] + view_wview[0]/2, view_yview[0]+50, "Distance: " + string(round(global.bDist)));

// show height
// show distance
