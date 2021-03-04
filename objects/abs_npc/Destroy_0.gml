/// @description On destruction creates a debris object.

	
		var _debris = instance_create_layer(x, y, layer, obj_debris);
		var _spriteIndex = spriteDamage;
		var _grav = grav;
		var _hsp = hsp;
		var _vsp = vsp;
	
		with (_debris)
		{
			debris_create(_spriteIndex, _grav, _hsp, _vsp * 2, _hsp * 5);
		}