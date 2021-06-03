/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C17F963
/// @DnDArgument : "var" "agro"
if(agro == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3BC2F6C0
	/// @DnDParent : 2C17F963
	/// @DnDArgument : "var" "distance_to_object(ge_obj_player_move)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "800"
	if(distance_to_object(ge_obj_player_move) <= 800)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 1619CA53
		/// @DnDParent : 3BC2F6C0
		/// @DnDArgument : "angle" "direction"
		image_angle = direction;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 0BF43A4F
		/// @DnDParent : 3BC2F6C0
		/// @DnDArgument : "x" "ge_obj_player_move.x"
		/// @DnDArgument : "y" "ge_obj_player_move.y"
		direction = point_direction(x, y, ge_obj_player_move.x, ge_obj_player_move.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7B90F5B7
		/// @DnDParent : 3BC2F6C0
		/// @DnDArgument : "speed" "5"
		speed = 5;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 017DE8F9
		/// @DnDParent : 3BC2F6C0
		/// @DnDArgument : "imageind" ""
		/// @DnDArgument : "spriteind" "spr_fly_2"
		sprite_index = ge_spr_fly_2;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74F1ECBA
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4FFE852D
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