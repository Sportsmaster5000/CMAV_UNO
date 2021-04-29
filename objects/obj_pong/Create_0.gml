/// @description Overwrites parent.
var _text = "You can bring up your phone by pressing 'M' and cycle through options using the Left and Right arrow keys.";

npc_create(_text, "Pong", 15, 0.25, 0.25, true, faction.neutral, 1);

spriteDamage = spr_pongHit