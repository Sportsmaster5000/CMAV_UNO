/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2433EE7B
/// @DnDArgument : "x" "obj_player_move.x-600"
/// @DnDArgument : "y" "obj_player_move.y-900"
x = obj_player_move.x-600;
y = obj_player_move.y-900;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79DAFE53
/// @DnDArgument : "var" "boss_hp"
/// @DnDArgument : "op" "3"
if(boss_hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 39C4BCAE
	/// @DnDApplyTo : {ge_en_a_x_t}
	/// @DnDParent : 79DAFE53
	with(ge_en_a_x_t) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0472020B
	/// @DnDApplyTo : {ge_en_a_x_c}
	/// @DnDParent : 79DAFE53
	with(ge_en_a_x_c) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D7668E3
	/// @DnDApplyTo : {ge_en_a_x_face}
	/// @DnDParent : 79DAFE53
	with(ge_en_a_x_face) instance_destroy();
}