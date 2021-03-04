/// @description draws self, flickering if need be. May draw afterimage.


//If dashing draws afterimage.
if (state == playerStates.dash)
{
	draw_sprite_ext(sprite_index, image_index, xprevious, yprevious, image_xscale, image_yscale, 0, c_white, 0.5);	
}

if (flicker % 2 == 0)
{
	draw_self();	
}

//Draws one way platform collision.
//draw_line_color(bbox_left, bbox_bottom + 1, bbox_right, bbox_bottom + 1, c_purple, c_purple);