/// @description Overwrites parent.
var _text = "If you kill someone, you can just leave and come back. They'll have reincarnated.";


npc_create(_text, "Falk", 5, 0.25, 2, true, faction.neutral, 1);

//todo: replace with pilot versions
ranged_initialize(spr_pilotIdle, spr_pilotDead, spr_pilotRun, spr_pilotFire, obj_pilotMissile);

