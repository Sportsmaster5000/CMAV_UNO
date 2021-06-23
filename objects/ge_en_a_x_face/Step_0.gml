/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 4C517418
/// @DnDArgument : "x" "ge_en_a_x.x"
/// @DnDArgument : "y" "ge_en_a_x.y+270"
x = ge_en_a_x.x;
y = ge_en_a_x.y+270;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12D0ED90
/// @DnDArgument : "var" "distance_to_object(ge_obj_player_move)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "600"
if(distance_to_object(ge_obj_player_move) <= 600)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4DB88121
	/// @DnDParent : 12D0ED90
	/// @DnDArgument : "x" "ge_bj_player_move.x"
	/// @DnDArgument : "y" "ge_obj_player_move.y"
	direction = point_direction(x, y, ge_bj_player_move.x, ge_obj_player_move.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D128A4E
	/// @DnDParent : 12D0ED90
	/// @DnDArgument : "var" "cooldown_t"
	/// @DnDArgument : "op" "3"
	if(cooldown_t <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 29C6A5F6
		/// @DnDParent : 0D128A4E
		/// @DnDArgument : "x" "ge_obj_player_move.x"
		/// @DnDArgument : "y" "ge_obj_player_move.y"
		direction = point_direction(x, y, ge_obj_player_move.x, ge_obj_player_move.y);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 054169DD
		/// @DnDParent : 0D128A4E
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "ge_shot_c"
		/// @DnDArgument : "layer" ""projectile""
		/// @DnDSaveInfo : "objectid" "ge_shot_c"
		instance_create_layer(x, y, "projectile", ge_shot_c);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55054E94
		/// @DnDParent : 0D128A4E
		/// @DnDArgument : "expr" "20"
		/// @DnDArgument : "var" "cooldown_t"
		cooldown_t = 20;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 61E04DFA
		/// @DnDParent : 0D128A4E
		/// @DnDArgument : "spriteind" "ars_face_s"
		sprite_index = ars_face_s;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26246D93
	/// @DnDParent : 12D0ED90
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "cooldown_t"
	cooldown_t += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FF9717F
	/// @DnDParent : 12D0ED90
	/// @DnDArgument : "var" "cooldown_t"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "15"
	if(cooldown_t <= 15)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 366DFB29
		/// @DnDParent : 0FF9717F
		/// @DnDArgument : "spriteind" "ars_face"
		sprite_index = ars_face;
		image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 665DBDF6
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 15EC6AA9
	/// @DnDParent : 665DBDF6
	/// @DnDArgument : "spriteind" "ars_face_d"
	sprite_index = ars_face_d;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35DBEB2F
	/// @DnDParent : 665DBDF6
	/// @DnDArgument : "expr" "1000"
	/// @DnDArgument : "var" "cooldown_t"
	cooldown_t = 1000;
}