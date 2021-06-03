/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 47D015AB
/// @DnDArgument : "var" "faster"
/// @DnDArgument : "value" "true"
if(faster == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 29E45BF7
	/// @DnDParent : 47D015AB
	/// @DnDArgument : "key" "ord("D")"
	var l29E45BF7_0;
	l29E45BF7_0 = keyboard_check(ord("D"));
	if (l29E45BF7_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 31195B65
		/// @DnDParent : 29E45BF7
		/// @DnDArgument : "speed" "12"
		/// @DnDArgument : "type" "1"
		hspeed = 12;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 649BEC5B
		/// @DnDParent : 29E45BF7
		/// @DnDArgument : "spriteind" "spr_player_move"
		/// @DnDSaveInfo : "spriteind" "spr_player_move"
		sprite_index = ge_spr_player_move;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 3DE6915C
	/// @DnDParent : 47D015AB
	/// @DnDArgument : "key" "ord("A")"
	var l3DE6915C_0;
	l3DE6915C_0 = keyboard_check(ord("A"));
	if (l3DE6915C_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 660FA1F7
		/// @DnDParent : 3DE6915C
		/// @DnDArgument : "speed" "-12"
		/// @DnDArgument : "type" "1"
		hspeed = -12;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 63469E2D
		/// @DnDParent : 3DE6915C
		/// @DnDArgument : "imageind" "2"
		/// @DnDArgument : "spriteind" "spr_player_move"
		/// @DnDSaveInfo : "spriteind" "spr_player_move"
		sprite_index = ge_spr_player_move;
		image_index = 2;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5A62D64D
	/// @DnDParent : 47D015AB
	/// @DnDArgument : "key" "ord("W")"
	var l5A62D64D_0;
	l5A62D64D_0 = keyboard_check(ord("W"));
	if (l5A62D64D_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 671C8AB2
		/// @DnDParent : 5A62D64D
		/// @DnDArgument : "speed" "-12"
		/// @DnDArgument : "type" "2"
		vspeed = -12;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 698C36F1
		/// @DnDParent : 5A62D64D
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_player_move"
		/// @DnDSaveInfo : "spriteind" "spr_player_move"
		sprite_index = ge_spr_player_move;
		image_index = 1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2ED7D3C3
	/// @DnDParent : 47D015AB
	/// @DnDArgument : "key" "ord("S")"
	var l2ED7D3C3_0;
	l2ED7D3C3_0 = keyboard_check(ord("S"));
	if (l2ED7D3C3_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 35E6A337
		/// @DnDParent : 2ED7D3C3
		/// @DnDArgument : "speed" "12"
		/// @DnDArgument : "type" "2"
		vspeed = 12;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0B967980
		/// @DnDParent : 2ED7D3C3
		/// @DnDArgument : "imageind" "3"
		/// @DnDArgument : "spriteind" "spr_player_move"
		/// @DnDSaveInfo : "spriteind" "spr_player_move"
		sprite_index = ge_spr_player_move;
		image_index = 3;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E1DE15C
/// @DnDArgument : "var" "faster"
/// @DnDArgument : "value" "false"
if(faster == false)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 11E652B1
	/// @DnDParent : 5E1DE15C
	/// @DnDArgument : "key" "ord("D")"
	var l11E652B1_0;
	l11E652B1_0 = keyboard_check(ord("D"));
	if (l11E652B1_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 64D712F0
		/// @DnDParent : 11E652B1
		/// @DnDArgument : "speed" "8"
		/// @DnDArgument : "type" "1"
		hspeed = 8;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6A09BAAF
		/// @DnDParent : 11E652B1
		/// @DnDArgument : "spriteind" "spr_player_move"
		/// @DnDSaveInfo : "spriteind" "spr_player_move"
		sprite_index = ge_spr_player_move;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 28B1C7EB
	/// @DnDParent : 5E1DE15C
	/// @DnDArgument : "key" "ord("A")"
	var l28B1C7EB_0;
	l28B1C7EB_0 = keyboard_check(ord("A"));
	if (l28B1C7EB_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 6BC32B16
		/// @DnDParent : 28B1C7EB
		/// @DnDArgument : "speed" "-8"
		/// @DnDArgument : "type" "1"
		hspeed = -8;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 75676835
		/// @DnDParent : 28B1C7EB
		/// @DnDArgument : "imageind" "2"
		/// @DnDArgument : "spriteind" "spr_player_move"
		/// @DnDSaveInfo : "spriteind" "spr_player_move"
		sprite_index = ge_spr_player_move;
		image_index = 2;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 2FA65153
	/// @DnDParent : 5E1DE15C
	/// @DnDArgument : "key" "ord("W")"
	var l2FA65153_0;
	l2FA65153_0 = keyboard_check(ord("W"));
	if (l2FA65153_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0D0111DB
		/// @DnDParent : 2FA65153
		/// @DnDArgument : "speed" "-8"
		/// @DnDArgument : "type" "2"
		vspeed = -8;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 790F94B0
		/// @DnDParent : 2FA65153
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "spr_player_move"
		/// @DnDSaveInfo : "spriteind" "spr_player_move"
		sprite_index = ge_spr_player_move;
		image_index = 1;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 37B4B814
	/// @DnDParent : 5E1DE15C
	/// @DnDArgument : "key" "ord("S")"
	var l37B4B814_0;
	l37B4B814_0 = keyboard_check(ord("S"));
	if (l37B4B814_0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 04791E01
		/// @DnDParent : 37B4B814
		/// @DnDArgument : "speed" "8"
		/// @DnDArgument : "type" "2"
		vspeed = 8;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2D4042C3
		/// @DnDParent : 37B4B814
		/// @DnDArgument : "imageind" "3"
		/// @DnDArgument : "spriteind" "spr_player_move"
		/// @DnDSaveInfo : "spriteind" "spr_player_move"
		sprite_index = ge_spr_player_move;
		image_index = 3;
	}
}