draw_self();

if (image_xscale < 1) { image_xscale += 0.05; }

else if (image_xscale > 1) { image_xscale = 1; }

image_yscale = image_xscale;

debug(image_xscale, "scaleX");