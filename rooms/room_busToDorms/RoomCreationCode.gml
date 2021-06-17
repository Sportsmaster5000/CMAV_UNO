
var _background = layer_background_get_id(layer_get_id("BACKGROUND"));


//Checks if player is male or female. If male sets the background to the male one, otherwise leaves as-is.
if	(global.playerIdleSprite != spr_playerIdleF1) && (global.playerIdleSprite != spr_playerIdleF2)
{
	layer_background_sprite(_background, bg_animMaleBusRide)
}