#macro PS_ROCKET_SPEED 3
#macro PS_MED_RANGE 160
#macro PS_CLOSE_RANGE 80
#macro PS_TANK_FIRE_CD (room_speed * 3)
#macro PS_FOOD_QUOTA (20 * global.ps_level)
#macro PS_SIZE_INCREASE_SCALE_THRESHOLD 1.5
#macro PS_LOW_SIZE_INCREASE 0.00005
#macro PS_HIGH_SIZE_INCREASE 0.005
#macro PS_LEVEL_COMPLETE_HP_BONUS 25
#macro PS_LEVEL_COMPLETE_SCORE_BONUS 1000
#macro PS_LEVEL_MINE_SCALE (global.ps_level / 2)
#macro PS_LEVEL_BUILDING_SCALE (global.ps_level * 25)
#macro PS_LEVEL_PEOPLE_SCALE (PS_FOOD_QUOTA + (2 * global.ps_level))
#macro PS_KNOCKBACK 4
#macro PS_DAMAGE 10
#macro PS_HEALTHBARW 5
#macro PS_HUNGER 30 
#macro PS_MAX_PEOPLE 2000
#macro PS_PERSON_SPAWN 60
#macro PS_BUILDING_Y 288
#macro PS_GRAVITY_OFFSET (grav * 0.5)
#macro PS_BLOCK ps_obj_block
#macro PS_JUMP_HEIGHT 5
#macro PS_GROUND ps_obj_block
#macro PS_TERMINAL_VELOCITY 2
#macro PS_RIGHT_BUTTON (keyboard_check(rightKey) || gamepad_button_check(playerIndex, gp_padr) || (joystick_direction(playerIndex + 1) == vk_numpad6))
#macro PS_DOWN_BUTTON (keyboard_check(downKey) || gamepad_button_check(playerIndex, gp_padd) || (joystick_direction(playerIndex + 1) == vk_numpad2))
#macro PS_LEFT_BUTTON (keyboard_check(leftKey) || gamepad_button_check(playerIndex, gp_padl) || (joystick_direction(playerIndex + 1) == vk_numpad4))
#macro PS_UP_BUTTON (keyboard_check(upKey) || gamepad_button_check(playerIndex, gp_padu) || (joystick_direction(playerIndex + 1) == vk_numpad8))
#macro PS_RIGHT_BUTTON_PRESSED (keyboard_check_pressed(rightKey) || gamepad_button_check_pressed(playerIndex, gp_padr))
#macro PS_DOWN_BUTTON_PRESSED (keyboard_check_pressed(downKey) || gamepad_button_check_pressed(playerIndex, gp_padd))
#macro PS_LEFT_BUTTON_PRESSED (keyboard_check_pressed(leftKey) || gamepad_button_check_pressed(playerIndex, gp_padl))
#macro PS_UP_BUTTON_PRESSED (keyboard_check_pressed(upKey) || gamepad_button_check_pressed(playerIndex, gp_padu))
#macro PS_B_BUTTON (keyboard_check(bKey) || gamepad_button_check(playerIndex, gp_face2) || joystick_check_button(playerIndex + 1, 6) || joystick_check_button(playerIndex + 1, 10))
#macro PS_A_BUTTON (keyboard_check(aKey) || gamepad_button_check(playerIndex, gp_face1) || joystick_check_button(playerIndex + 1, 3) || joystick_check_button(playerIndex + 1, 7))
#macro PS_X_BUTTON (keyboard_check(xKey) || gamepad_button_check(playerIndex, gp_face3) || joystick_check_button(playerIndex + 1, 4) || joystick_check_button(playerIndex + 1, 8))
#macro PS_Y_BUTTON (keyboard_check(yKey) || gamepad_button_check(playerIndex, gp_face4) || joystick_check_button(playerIndex + 1, 5) || joystick_check_button(playerIndex + 1, 9))
#macro PS_EXIT_BUTTON ((gamepad_button_check(0, gp_start) && gamepad_button_check(0, gp_select)) || (keyboard_check(vk_f4)) || (joystick_check_button(1, 1)))
#macro PS_B_BUTTON_PRESSED (keyboard_check_pressed(bKey) || gamepad_button_check_pressed(playerIndex, gp_face2))
#macro PS_A_BUTTON_PRESSED (keyboard_check_pressed(aKey) || gamepad_button_check_pressed(playerIndex, gp_face1))
#macro PS_X_BUTTON_PRESSED (keyboard_check_pressed(xKey) || gamepad_button_check_pressed(playerIndex, gp_face3))
#macro PS_Y_BUTTON_PRESSED (keyboard_check_pressed(yKey) || gamepad_button_check_pressed(playerIndex, gp_face4))
#macro PS_INVINCIBILITY (room_speed/2)
#macro PS_VIEW_RANGE 140
#macro PS_HUMAN_SPEED 2
#macro PS_HP_BAR_W 32
#macro PS_HP_BAR_L 128
#macro PS_HP_METERW 24
#macro PS_HP_MAR 8
#macro PS_HP_BAR_X 540
#macro PS_HP_BAR_Y 5
#macro c_pink make_colour_rgb(255, 150, 255)
#macro PS_TANK_CAP ((global.ps_level)/3)
#macro PS_TANK_SPAWN_CD (room_speed * 5)
#macro PS_HELI_HEIGHT 160
#macro PS_HELICOPTER_CAP ((global.ps_level)/5)
#macro PS_HELICOPTER_SPAWN_CD (room_speed * 10)
#macro PS_ENEMY_SPAWN_LEFT_X 160
#macro PS_ENEMY_SPAWN_RIGHT_X (room_width - PS_ENEMY_SPAWN_LEFT_X)
