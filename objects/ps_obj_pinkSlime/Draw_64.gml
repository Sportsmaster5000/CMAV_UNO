/// @description draws the UI.

//ps_hp bar.
draw_set_color(c_blue);
draw_roundrect(PS_HP_BAR_X, PS_HP_BAR_Y, PS_HP_BAR_X + PS_HP_BAR_W, PS_HP_BAR_Y + PS_HP_BAR_L + PS_HP_MAR, false);

//The meter.
draw_set_color(c_pink);
draw_roundrect(PS_HP_BAR_X + PS_HP_MAR, PS_HP_BAR_Y + PS_HP_MAR, PS_HP_BAR_X + PS_HP_BAR_W - PS_HP_MAR, PS_HP_BAR_Y + (PS_HP_BAR_L * (global.ps_hp / global.ps_maxHP)) - PS_HP_MAR, false);

//Tells the player it's the ps_hp bar.
draw_set_color(c_white);
draw_set_font(ps_fnt_bigFont);
draw_set_halign(fa_center);
draw_text(PS_HP_BAR_X + (PS_HP_BAR_W / 2) + 1, PS_HP_BAR_Y + PS_HP_BAR_L - PS_HP_MAR, string_hash_to_newline("HP"));

draw_set_halign(fa_left);


draw_set_color(c_blue);
draw_roundrect(2, 5, 280, 50, false);

draw_set_color(c_pink);
draw_set_font(ps_fnt_font);

draw_text(5, 10, string_hash_to_newline("PROPERTY DAMAGE: " + string(global.ps_playerScore)));
draw_text(5, 25, string_hash_to_newline("PEOPLE EATEN: " + string(peopleEaten) + " / " + string(foodQuota)));


