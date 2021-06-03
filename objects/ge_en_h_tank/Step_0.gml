/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44EC8BA2
/// @DnDArgument : "var" "cooldown_t"
/// @DnDArgument : "op" "3"
if(cooldown_t <= 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 44D797FD
	/// @DnDParent : 44EC8BA2
	/// @DnDArgument : "y" "y"
	direction = point_direction(x, y, 0, y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 637CB12F
	/// @DnDParent : 44EC8BA2
	/// @DnDArgument : "expr" "70"
	/// @DnDArgument : "var" "cooldown_t"
	cooldown_t = 70;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 64534B30
	/// @DnDParent : 44EC8BA2
	/// @DnDArgument : "spriteind" "ge_spr_h_tank_s"
	/// @DnDSaveInfo : "spriteind" "ge_spr_h_tank_s"
	sprite_index = ge_spr_h_tank_s;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 650E68B1
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown_t"
cooldown_t += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01062D59
/// @DnDArgument : "var" "cooldown_t"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "60"
if(cooldown_t <= 60)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 53145D43
	/// @DnDParent : 01062D59
	/// @DnDArgument : "spriteind" "ge_spr_h_tank"
	/// @DnDSaveInfo : "spriteind" "ge_spr_h_tank"
	sprite_index = ge_spr_h_tank;
	image_index = 0;
}