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
		/// @DnDArgument : "objectid" "ge_shot_t"
		/// @DnDArgument : "layer" ""projectile""
		/// @DnDSaveInfo : "objectid" "ge_shot_t"
		instance_create_layer(x, y, "projectile", ge_shot_t);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0D2AF20D
		/// @DnDParent : 498AABEC
		/// @DnDArgument : "soundid" "ge_shot_heavy"
		/// @DnDSaveInfo : "soundid" "ge_shot_heavy"
		audio_play_sound(ge_shot_heavy, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 547BFAF6
		/// @DnDParent : 498AABEC
		/// @DnDArgument : "expr" "70"
		/// @DnDArgument : "var" "cooldown_t"
		cooldown_t = 70;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 017DE8F9
		/// @DnDParent : 498AABEC
		/// @DnDArgument : "spriteind" "spr_turret_2"
		sprite_index = ge_spr_turret_2;
		image_index = 0;
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
	/// @DnDArgument : "value" "60"
	if(cooldown_t <= 60)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 521D31C3
		/// @DnDParent : 314219F1
		/// @DnDArgument : "spriteind" "ge_spr_turret_1"
		/// @DnDSaveInfo : "spriteind" "ge_spr_turret_1"
		sprite_index = ge_spr_turret_1;
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
/// @DnDHash : 74F1ECBA
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 632D1012
	/// @DnDParent : 74F1ECBA
	/// @DnDArgument : "soundid" "ge_expo"
	/// @DnDSaveInfo : "soundid" "ge_expo"
	audio_play_sound(ge_expo, 0, 0);

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 47AC8A25
	/// @DnDParent : 74F1ECBA
	/// @DnDArgument : "sound" "ge_expo"
	/// @DnDArgument : "pitch" "random_range(.5,2)"
	/// @DnDSaveInfo : "sound" "ge_expo"
	audio_sound_pitch(ge_expo, random_range(.5,2));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 69781F30
	/// @DnDParent : 74F1ECBA
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "ge_obj_expo"
	/// @DnDArgument : "layer" ""projectile""
	/// @DnDSaveInfo : "objectid" "ge_obj_expo"
	instance_create_layer(x + 0, y + 0, "projectile", ge_obj_expo);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 206DD05A
	/// @DnDParent : 74F1ECBA
	instance_destroy();
}