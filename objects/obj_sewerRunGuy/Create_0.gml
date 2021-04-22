/// @description Overwrites parent.
var _text = "Make sure you get enough protein!";


npc_create(_text, "Sewer Run", 5, 0.25, 0.25, true, faction.neutral, 1);

hockeyPlayer_create(spr_HockeyIdleB, spr_hockeyDamageB, spr_hockeyRunB, spr_hockeyAttackB);

/*if(global.storyCatsComplete)
{
	spriteIndex = spr_katComplete;	
}*/