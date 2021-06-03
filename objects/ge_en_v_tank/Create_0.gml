/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32C9E87F
/// @DnDArgument : "var" "cooldown"
cooldown = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7B3BD2A5
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "objectid" "ge_tank_spawn"
/// @DnDSaveInfo : "objectid" "ge_tank_spawn"
instance_create_layer(x, y, "Instances", ge_tank_spawn);