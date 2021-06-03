/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4DF207DC
/// @DnDArgument : "var" "sniper_on"
/// @DnDArgument : "value" "1"
if(sniper_on == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 1446DCE9
	/// @DnDParent : 4DF207DC
	/// @DnDArgument : "font" "ge_Font1"
	/// @DnDSaveInfo : "font" "ge_Font1"
	draw_set_font(ge_Font1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 034D60ED
	/// @DnDParent : 4DF207DC
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l034D60ED_0=($FF000000 >> 24);
	draw_set_alpha(l034D60ED_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 65074C73
	/// @DnDParent : 4DF207DC
	/// @DnDArgument : "x" "831"
	/// @DnDArgument : "y" "680"
	/// @DnDArgument : "caption" ""RIGHT CLICK ""
	draw_text(831, 680, string("RIGHT CLICK ") + "");

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 13DD8104
	/// @DnDParent : 4DF207DC
	/// @DnDArgument : "color" "$FF0055FF"
	draw_set_colour($FF0055FF & $ffffff);
	var l13DD8104_0=($FF0055FF >> 24);
	draw_set_alpha(l13DD8104_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 1BC5AB9B
	/// @DnDParent : 4DF207DC
	/// @DnDArgument : "x" "830"
	/// @DnDArgument : "y" "680"
	/// @DnDArgument : "caption" ""RIGHT CLICK ""
	draw_text(830, 680, string("RIGHT CLICK ") + "");

	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 0A0D2F40
	/// @DnDParent : 4DF207DC
	/// @DnDArgument : "x1" "830"
	/// @DnDArgument : "y1" "710"
	/// @DnDArgument : "x2" "990"
	/// @DnDArgument : "y2" "730"
	/// @DnDArgument : "value" "sniper_ammo"
	/// @DnDArgument : "backcol" "$FF000000"
	/// @DnDArgument : "barcol" "$FF0055FF"
	/// @DnDArgument : "mincol" "$FF0055FF"
	/// @DnDArgument : "maxcol" "$FF0055FF"
	draw_healthbar(830, 710, 990, 730, sniper_ammo, $FF000000 & $FFFFFF, $FF0055FF & $FFFFFF, $FF0055FF & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF0055FF>>24) != 0));
}