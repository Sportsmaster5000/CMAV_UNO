/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6E6FE39F
/// @DnDArgument : "var" "pause"
/// @DnDArgument : "value" "true"
if(pause == true)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 042E0221
	/// @DnDParent : 6E6FE39F
	/// @DnDArgument : "sprite" "ge_bg_pause_2"
	/// @DnDSaveInfo : "sprite" "ge_bg_pause_2"
	draw_sprite(ge_bg_pause_2, 0, 0, 0);
}