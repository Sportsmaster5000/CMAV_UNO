/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34B5F7CC
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 52589164
	/// @DnDParent : 34B5F7CC
	/// @DnDArgument : "var" "laser2"
	laser2 = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 61FD2097
	/// @DnDParent : 34B5F7CC
	/// @DnDArgument : "spriteind" "ge_core_dead"
	/// @DnDSaveInfo : "spriteind" "ge_core_dead"
	sprite_index = ge_core_dead;
	image_index = 0;
}