//Draws text, making it flicker incrementally.

draw_set_font(ps_fnt_bigFont);
draw_set_halign(fa_center);

draw_text_ext((room_width/2), 16, string_hash_to_newline("GAME OVER! YOU CAUSED " + string(global.ps_playerScore) + " DOLLARS IN PROPERTY PS_DAMAGE!"), 16, room_width);


draw_set_font(ps_fnt_font);
draw_text_ext((room_width/2), (room_height * (3/4)), string_hash_to_newline("PRESS ANY KEY TO CONTINUE"), 1, room_width);

draw_set_halign(fa_left);

