/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 058FFCAA
/// @DnDArgument : "x1" "30"
/// @DnDArgument : "y1" "710"
/// @DnDArgument : "x2" "260"
/// @DnDArgument : "y2" "730"
/// @DnDArgument : "value" "ge_obj_player_gun.hp"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF00FF00"
/// @DnDArgument : "mincol" "$FF0000FF"
/// @DnDArgument : "maxcol" "$FF00FF00"
draw_healthbar(30, 710, 260, 730, ge_obj_player_gun.hp, $FF000000 & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FF00FF00>>24) != 0));