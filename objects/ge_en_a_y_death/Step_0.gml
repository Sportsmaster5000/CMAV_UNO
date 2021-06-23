/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 192B3E9E
/// @DnDApplyTo : {ge_en_a_y_hp}
/// @DnDArgument : "var" "boss_hp"
/// @DnDArgument : "op" "3"
with(ge_en_a_y_hp) var l192B3E9E_0 = boss_hp <= 0;
if(l192B3E9E_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 43B04722
	/// @DnDParent : 192B3E9E
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "ge_obj_expo_cycle"
	/// @DnDArgument : "layer" ""projectile""
	/// @DnDSaveInfo : "objectid" "ge_obj_expo_cycle"
	instance_create_layer(x + 0, y + 0, "projectile", ge_obj_expo_cycle);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7552A4AA
	/// @DnDParent : 192B3E9E
	/// @DnDArgument : "xpos" "200"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-400"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "ge_obj_expo_cycle"
	/// @DnDArgument : "layer" ""projectile""
	/// @DnDSaveInfo : "objectid" "ge_obj_expo_cycle"
	instance_create_layer(x + 200, y + -400, "projectile", ge_obj_expo_cycle);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2A0335EB
	/// @DnDParent : 192B3E9E
	/// @DnDArgument : "xpos" "-300"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-200"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "ge_obj_expo_cycle"
	/// @DnDArgument : "layer" ""projectile""
	/// @DnDSaveInfo : "objectid" "ge_obj_expo_cycle"
	instance_create_layer(x + -300, y + -200, "projectile", ge_obj_expo_cycle);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 14013EFD
	/// @DnDParent : 192B3E9E
	/// @DnDArgument : "soundid" "ge_music_lv1"
	/// @DnDSaveInfo : "soundid" "ge_music_lv1"
	audio_stop_sound(ge_music_lv1);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 771360F3
	/// @DnDParent : 192B3E9E
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "countdown"
	countdown += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14BDB6D6
	/// @DnDParent : 192B3E9E
	/// @DnDArgument : "var" "countdown"
	/// @DnDArgument : "op" "3"
	if(countdown <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 206D71C2
		/// @DnDParent : 14BDB6D6
		room_goto_next();
	}
}