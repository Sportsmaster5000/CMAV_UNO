/// @description Overwrites parent.
var _text = "If you kill someone, you can just leave and come back. They'll have reincarnated.";


npc_create(_text, "Gator Man", 5, 0.25, 2, true, faction.neutral, 0.2);

//todo: replace with pilot versions
ranged_initialize(spr_gatorIdle, spr_gatorDead, spr_gatorRun, spr_gatorFire, obj_gatorMissile);

