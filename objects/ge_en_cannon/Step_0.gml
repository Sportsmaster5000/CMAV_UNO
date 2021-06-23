/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BC2F6C0
/// @DnDArgument : "var" "distance_to_object(ge_obj_player_move)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "700"
if(distance_to_object(ge_obj_player_move) <= 700)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0BF43A4F
	/// @DnDParent : 3BC2F6C0
	/// @DnDArgument : "x" "ge_obj_player_move.x"
	/// @DnDArgument : "y" "ge_obj_player_move.y"
	direction = point_direction(x, y, ge_obj_player_move.x, ge_obj_player_move.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 498AABEC
	/// @DnDParent : 3BC2F6C0
	/// @DnDArgument : "var" "cooldown_t"
	/// @DnDArgument : "op" "3"
	if(cooldown_t <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 391537F0
		/// @DnDParent : 498AABEC
		/// @DnDArgument : "x" "ge_obj_player_move.x"
		/// @DnDArgument : "y" "ge_obj_player_move.y"
		direction = point_direction(x, y, ge_obj_player_move.x, ge_obj_player_move.y);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 52A50573
		/// @DnDParent : 498AABEC
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "ge_shot_c"
		/// @DnDArgument : "layer" ""projectile""
		/// @DnDSaveInfo : "objectid" "ge_shot_c"
		instance_create_layer(x, y, "projectile", ge_shot_c);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 547BFAF6
		/// @DnDParent : 498AABEC
		/// @DnDArgument : "expr" "120"
		/// @DnDArgument : "var" "cooldown_t"
		cooldown_t = 120;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 017DE8F9
		/// @DnDParent : 498AABEC
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "spriteind" "ge_spr_cannon"
		/// @DnDSaveInfo : "spriteind" "ge_spr_cannon"
		sprite_index = ge_spr_cannon;
		image_index = 1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4EDBE690
	/// @DnDParent : 3BC2F6C0
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "cooldown_t"
	cooldown_t += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 314219F1
	/// @DnDParent : 3BC2F6C0
	/// @DnDArgument : "var" "cooldown_t"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "110"
	if(cooldown_t <= 110)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 521D31C3
		/// @DnDParent : 314219F1
		/// @DnDArgument : "imageind" "2"
		/// @DnDArgument : "spriteind" "ge_spr_cannon"
		/// @DnDSaveInfo : "spriteind" "ge_spr_cannon"
		sprite_index = ge_spr_cannon;
		image_index = 2;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77A0CA3A
	/// @DnDParent : 3BC2F6C0
	/// @DnDArgument : "var" "cooldown_t"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "80"
	if(cooldown_t <= 80)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 562B6CA5
		/// @DnDParent : 77A0CA3A
		/// @DnDArgument : "spriteind" "ge_spr_cannon"
		/// @DnDSaveInfo : "spriteind" "ge_spr_cannon"
		sprite_index = ge_spr_cannon;
		image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 1619CA53
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 605F469B
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 29E4078E
	/// @DnDParent : 605F469B
	/// @DnDArgument : "soundid" "ge_expo"
	/// @DnDSaveInfo : "soundid" "ge_expo"
	audio_play_sound(ge_expo, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 492CBD1D
	/// @DnDParent : 605F469B
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "ge_obj_expo"
	/// @DnDArgument : "layer" ""projectile""
	/// @DnDSaveInfo : "objectid" "ge_obj_expo"
	instance_create_layer(x + 0, y + 0, "projectile", ge_obj_expo);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 73049818
	/// @DnDParent : 605F469B
	instance_destroy();
}