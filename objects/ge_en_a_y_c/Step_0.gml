/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 26D73DC2
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2BF6A1FB
	/// @DnDParent : 26D73DC2
	/// @DnDArgument : "soundid" "ge_expo_core"
	audio_play_sound(ge_expo_core, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 48438692
	/// @DnDParent : 26D73DC2
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "ge_obj_expo"
	/// @DnDArgument : "layer" ""projectile""
	instance_create_layer(x + 0, y + 0, "projectile", ge_obj_expo);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BEE50AB
	/// @DnDParent : 26D73DC2
	instance_destroy();
}