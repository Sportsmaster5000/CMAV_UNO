/// @description If a button is pressed, goes to the next room.
if (timer > (room_speed * 2)) && ((keyboard_check(vk_anykey) || PS_A_BUTTON || PS_B_BUTTON || PS_X_BUTTON || PS_Y_BUTTON))
{
    room_goto(ps_room_pinkSlimeLevel);
}

timer++;

