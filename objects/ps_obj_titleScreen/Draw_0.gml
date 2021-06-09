/// @description Draws text

//The strings that will be printed.
var title = "THE TERRIBLE PINK SLIME THAT DEVOURED THE EARTH!!!";

//What is declared here depends on if there is a gamepad or not.
var line1;

var gamepadConnected = false;

//Finds out if a gamepad is connected.
for (var i = 0; i < gamepad_get_device_count(); i++)
{
    if (gamepad_is_connected(i))
    {
        gamepadConnected = true;
    }
}

if (gamepadConnected)
{
    line1 = "MOVE BY JUMPING. A AND B JUMPS, STEER WITH D-PAD. HOLD JUMP TO JUMP HIGHER. YOU MUST EAT PEOPLE TO SURVIVE. AVOID MINES.";
}
else
{
    line1 = "MOVE BY JUMPING. Z AND X JUMP, STEER WITH ARROW KEYS. HOLD JUMP TO JUMP HIGHER. YOU MUST EAT PEOPLE TO SURVIVE. AVOID MINES.";
}

var line2 = "PRESS ANY KEY TO START";
var line3 = "5PIKE, BEEBO";
var line4 = "SOUND BY JUHANI JUNKALA, MUSIC BY CLEYTON KAUFFMAN";

draw_set_color(c_pink);
draw_set_font(ps_fnt_bigFont);
draw_set_halign(fa_center);
draw_text_ext((room_width/2), 16, string_hash_to_newline(title), 14, room_width);


draw_set_font(ps_fnt_font);

draw_text_ext((room_width/2), (room_height * (1/4)), string_hash_to_newline(line1), 14, room_width);
    
//Only displays this line if the delay has passed.
if (timer > (room_speed * 2))
{
    draw_text_ext((room_width/2), (room_height * (3/4)), string_hash_to_newline(line2), 10, room_width);
}

draw_text_ext((room_width/2), (room_height - 48), string_hash_to_newline(line3), 14, room_width);
draw_text_ext((room_width/2), (room_height - 32), string_hash_to_newline(line4), 14, room_width);

draw_set_halign(fa_left);

