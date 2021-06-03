/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 0C449AC2
/// @DnDArgument : "x" "obj_player_move.x"
/// @DnDArgument : "y" "obj_player_move.y"
x = ge_obj_player_move.x;
y = ge_obj_player_move.y;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 54EA4A84
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 3C184C1D
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 5B539A00
var l5B539A00_0;
l5B539A00_0 = mouse_check_button(mb_left);
if (l5B539A00_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7550DFF9
	/// @DnDParent : 5B539A00
	/// @DnDArgument : "var" "cooldown_gun"
	/// @DnDArgument : "op" "3"
	if(cooldown_gun <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 04D2FA2D
		/// @DnDParent : 7550DFF9
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "ge_bullet"
		/// @DnDArgument : "layer" ""projectile""
		/// @DnDSaveInfo : "objectid" "ge_bullet"
		instance_create_layer(x, y, "projectile", ge_bullet);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 71A4256A
		/// @DnDParent : 7550DFF9
		/// @DnDArgument : "soundid" "ge_shot_light"
		/// @DnDSaveInfo : "soundid" "ge_shot_light"
		audio_play_sound(ge_shot_light, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0940F6C7
		/// @DnDParent : 7550DFF9
		/// @DnDArgument : "expr" "7"
		/// @DnDArgument : "var" "cooldown_gun"
		cooldown_gun = 7;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 30FABF98
		/// @DnDParent : 7550DFF9
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "ge_Sprite1"
		/// @DnDSaveInfo : "spriteind" "ge_Sprite1"
		sprite_index = ge_Sprite1;
		image_index = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4056B019
/// @DnDArgument : "var" "sniper_on"
/// @DnDArgument : "value" "1"
if(sniper_on == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E55B930
	/// @DnDParent : 4056B019
	/// @DnDArgument : "var" "sniper_ammo"
	/// @DnDArgument : "op" "2"
	if(sniper_ammo > 0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 2AF461CB
		/// @DnDParent : 2E55B930
		/// @DnDArgument : "button" "mb_right"
		var l2AF461CB_0;
		l2AF461CB_0 = mouse_check_button_pressed(mb_right);
		if (l2AF461CB_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 51BD2CFD
			/// @DnDParent : 2AF461CB
			/// @DnDArgument : "expr" "-16.7"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "sniper_ammo"
			sniper_ammo += -16.7;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 42AAA9FF
			/// @DnDParent : 2AF461CB
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "ge_bullet_2"
			/// @DnDArgument : "layer" ""projectile""
			/// @DnDSaveInfo : "objectid" "ge_bullet_2"
			instance_create_layer(x, y, "projectile", ge_bullet_2);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 22D822CD
			/// @DnDParent : 2AF461CB
			/// @DnDArgument : "soundid" "ge_shot_shatter"
			/// @DnDSaveInfo : "soundid" "ge_shot_shatter"
			audio_play_sound(ge_shot_shatter, 0, 0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 058BB93E
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown_gun"
cooldown_gun += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4DC7FF3C
/// @DnDArgument : "var" "cooldown_gun"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "3"
if(cooldown_gun <= 3)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 142F154E
	/// @DnDParent : 4DC7FF3C
	/// @DnDArgument : "spriteind" "Sprite1"
	sprite_index = ge_Sprite1;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71AB2F3D
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 19239424
	/// @DnDParent : 71AB2F3D
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "ge_obj_expo"
	/// @DnDArgument : "layer" ""projectile""
	/// @DnDSaveInfo : "objectid" "ge_obj_expo"
	instance_create_layer(x + 0, y + 0, "projectile", ge_obj_expo);

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 187051C7
	/// @DnDParent : 71AB2F3D
	room_restart();
}