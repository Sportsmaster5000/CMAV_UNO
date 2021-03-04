/// @function vincent_aggressive(_target)
/// @description makes vincent attack the target, decrements attack timer.
/// @param _target pointer to object being targetted.
function vincent_aggressive(_target)
{
	var _distance = distance_to_object(_target);
	var _facing = sign(x - _target.x);
	var _angle = point_direction(x, y, _target.x, _target.y) + 90;
	var _alignment = alignment;
	
	show_debug_message(string(_angle));
	
	if (attackTimer > 0)
	{
		attackTimer--;
	}
	
	if (_facing != 0)
	{
		image_xscale = _facing;
	}
	
	if (_distance < MID_RANGE)
	{
		if (attackTimer <= 0)
		{
			
			var _missile = instance_create_depth(x, y, depth, obj_coffeeCup)
			with (_missile)
			{
				var _hsp = dsin(_angle) * 4;
				var _vsp = dcos(_angle) * 4;
				phys_create(0, 0, _hsp, _vsp, false);
				hurtbox_create(2, 3, 3, _alignment, false);
			
			}
			
			attackTimer = attackTime;
		}
	}
}