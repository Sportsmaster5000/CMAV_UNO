/// @description Draws different values based  stats for pause menu.


switch (global.phoneMenuState ) 
{
    case 0:
			pause_menu_stats_draw_gui();
        break;
    case 1:
			pause_menu_controls_draw_gui();
        break;
}