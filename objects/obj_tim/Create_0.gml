/// @description Overwrites parent.
var _text = "Ready to do my obstacle course?";

npc_create(_text, "Tim", 15, 0.25, 0.25, true, faction.neutral, 0);
transition_create(1300, 1864, room_obstacleCourse, "Obstacle Course");