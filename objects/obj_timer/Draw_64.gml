/// @description Draws the amount of time left on the timer.

draw_set_halign(fa_center);
draw_text(CAMERA_WIDTH/2, 50, string(floor(time / 30)));