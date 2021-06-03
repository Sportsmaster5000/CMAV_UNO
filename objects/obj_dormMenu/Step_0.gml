/// @description Inherits, allows event selection.
event_inherited();

/*
if (ANY_BUTTON_RELEASED)
{
	transition_board(xTo, yTo, roomTo);
}
*/


if (FACE_BUTTON_RELEASED)
{
	switch	(optionSelected)
	{
		case 0:
			global.hours += 3;
			global.hp = global.maxHP;
			global.pp = global.maxSP;
			room_goto(room_sleepTransitionCutscene);
		break;
		case 1:
			global.hours += 6;
			global.hp = global.maxHP
			global.pp = global.maxSP;
			room_goto(room_sleepTransitionCutscene);
		break;
		case 2:
			global.hours += 12;
			global.hp = global.maxHP
			global.pp = global.maxSP;
			room_goto(room_sleepTransitionCutscene);
		break;
		case 3:
			global.days++;
			global.hp = global.maxHP
			global.pp = global.maxSP;
			room_goto(room_sleepTransitionCutscene);
		break;
		case 4:
			game_save(SAVEFILE);
		break;
		case 5:
			if (file_exists(SAVEFILE))
			{
				game_load(SAVEFILE);
				transition_board(0, 0, room);
			}
		break;
		default:
			transition_board(xTo, yTo, roomTo);
		break;
		
	}
}