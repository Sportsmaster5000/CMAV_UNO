/// @description Insert description here

// Inherit the parent event.
event_inherited();

//Destroys self, createes debris object.

var _direction = x - other.x;

//Creates a debris object.
var _debris = instance_create_layer(x, y, layer, obj_debris);
	
var _sprite = sprite_index;
	
with (_debris)
{
	debris_create(_sprite, 0.25, _direction * hsp * 4, -5, hsp * 5);
}

instance_destroy();
