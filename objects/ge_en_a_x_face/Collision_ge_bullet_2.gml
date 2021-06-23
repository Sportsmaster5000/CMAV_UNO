/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4BFA218B
/// @DnDArgument : "expr" "-10"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hp"
hp += -10;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00D7DDAD
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "2"
if(hp > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D6F1B85
	/// @DnDApplyTo : en_a_x_hp
	/// @DnDParent : 00D7DDAD
	/// @DnDArgument : "expr" "-14"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "boss_hp"
	with(en_a_x_hp) {
	boss_hp += -14;
	
	}
}