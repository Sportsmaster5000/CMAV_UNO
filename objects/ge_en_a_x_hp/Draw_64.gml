/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4B91BB14
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(ge_Font1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7C7EE58B
draw_set_colour($FFFFFFFF & $ffffff);
var l7C7EE58B_0=($FFFFFFFF >> 24);
draw_set_alpha(l7C7EE58B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5DFE5471
/// @DnDArgument : "x" "31"
/// @DnDArgument : "y" "5"
/// @DnDArgument : "caption" ""ARSENAL X""
draw_text(31, 5, string("ARSENAL X") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3BFEBFE4
/// @DnDArgument : "color" "$FF0000FF"
draw_set_colour($FF0000FF & $ffffff);
var l3BFEBFE4_0=($FF0000FF >> 24);
draw_set_alpha(l3BFEBFE4_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1F7B1925
/// @DnDArgument : "x" "30"
/// @DnDArgument : "y" "5"
/// @DnDArgument : "caption" ""ARSENAL X""
draw_text(30, 5, string("ARSENAL X") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 6DD98A42
/// @DnDArgument : "x1" "30"
/// @DnDArgument : "y1" "40"
/// @DnDArgument : "x2" "990"
/// @DnDArgument : "y2" "60"
/// @DnDArgument : "value" "boss_hp"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF0000FF"
/// @DnDArgument : "mincol" "$FF6565FF"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(30, 40, 990, 60, boss_hp, $FF000000 & $FFFFFF, $FF6565FF & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF0000FF>>24) != 0));