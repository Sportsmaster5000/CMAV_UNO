/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3908D08D
/// @DnDArgument : "var" "distance_to_object(tank_spawn)"
if(distance_to_object(tank_spawn) == 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0FAE0FBB
	/// @DnDParent : 3908D08D
	/// @DnDArgument : "speed" "3"
	/// @DnDArgument : "type" "2"
	vspeed = 3;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 005A324E
	/// @DnDParent : 3908D08D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "cooldown"
	cooldown += 1;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 45EBA965
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "cooldown"
cooldown = 10;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 52C654DA
/// @DnDArgument : "var" "distance_to_object(ge_tank_spawn)"
if(distance_to_object(ge_tank_spawn) == 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 5D1AC838
	/// @DnDParent : 52C654DA
	/// @DnDArgument : "speed" "3"
	/// @DnDArgument : "type" "2"
	vspeed = 3;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4157926F
	/// @DnDParent : 52C654DA
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "var" "cooldown"
	cooldown = 10;
}