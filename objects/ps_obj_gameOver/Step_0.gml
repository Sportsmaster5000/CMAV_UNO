/// @description If a button is pressed, restarts the game.
if (timer > (room_speed * 2)) && ((keyboard_check(vk_anykey) || PS_A_BUTTON || PS_B_BUTTON || PS_X_BUTTON || PS_Y_BUTTON))
{
	//Set pixels to interpolate.
	gpu_set_texfilter(true);
	
	draw_set_font(font_med);
	
    transition_board(3200, 2250, room_overworld2);
}

timer++;

