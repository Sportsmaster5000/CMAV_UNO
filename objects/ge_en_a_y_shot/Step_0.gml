/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12D0ED90
/// @DnDArgument : "var" "distance_to_object(obj_player_move)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "700"
if(distance_to_object(obj_player_move) <= 700)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4DB88121
	/// @DnDParent : 12D0ED90
	/// @DnDArgument : "x" "obj_player_move.x"
	/// @DnDArgument : "y" "obj_player_move.y"
	direction = point_direction(x, y, obj_player_move.x, obj_player_move.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D128A4E
	/// @DnDParent : 12D0ED90
	/// @DnDArgument : "var" "cooldown_t"
	/// @DnDArgument : "op" "3"
	if(cooldown_t <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 29C6A5F6
		/// @DnDParent : 0D128A4E
		/// @DnDArgument : "x" "obj_player_move.x"
		/// @DnDArgument : "y" "obj_player_move.y"
		direction = point_direction(x, y, obj_player_move.x, obj_player_move.y);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 054169DD
		/// @DnDParent : 0D128A4E
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "ge_shot_c"
		/// @DnDArgument : "layer" ""projectile""
		/// @DnDSaveInfo : "objectid" "ge_shot_c"
		instance_create_layer(x, y, "projectile", ge_shot_c);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55054E94
		/// @DnDParent : 0D128A4E
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "cooldown_t"
		cooldown_t = 20;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26246D93
	/// @DnDParent : 12D0ED90
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "cooldown_t"
	cooldown_t += -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 665DBDF6
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35DBEB2F
	/// @DnDParent : 665DBDF6
	/// @DnDArgument : "expr" "1000"
	/// @DnDArgument : "var" "cooldown_t"
	cooldown_t = 1000;
}