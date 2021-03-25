/// @function pilot_aggressive(target)
/// @description makes the pilot attack the target.
/// @param target The target for the attack.
function pilot_aggressive(argument0) {

	var _target = argument0;
	var _direction = sign(_target.x - x);
	var _distance = distance_to_object(_target);

	//Decrements attack timer.
	if (attackTimer > 0)
	{
		attackTimer--;	
	}

	//Sets state based on range, may perform an action on changing state.
	if (_distance < CLOSE_RANGE)
	{
		facing = -_direction;
		state = pilotStates.run;
	} 
	//If within range fires a projectile.
	else if (_distance < LONG_RANGE)
	{
		facing = _direction;
		if (attackTimer <= 0)
		{
			state = pilotStates.shoot;
			attackTimer = attackTime;
		
			var _missile = instance_create_layer(x + (facing * 8), y, layer, obj_pilotMissile)
			var _facing = facing;
			var _alignment = alignment;
			with (_missile)
			{
				phys_create(0, 0, _facing * 12, 0, false);
				hurtbox_create(2, 3, 3, _alignment, false);
				image_xscale = _facing;
			}
		}
		else
		{
			state = pilotStates.idle;	
		}
	}
	//If outside of range reverts to passive behavior.
	else
	{
		pilot_passive()	
	}

}

/// @function pilot_passive()
/// @description makes this NPC move around a little.
function pilot_passive() {

	if (passiveTimer > 0)
	{
		passiveTimer--;	
	}

	//every 3 seconds decides to either wait for a bit or move around.
	if (passiveTimer <= 0)
	{
		facing = -facing;
		passiveTimer = passiveTime;
	
		state = choose(pilotStates.idle, pilotStates.run);
	}
}

/// @function pilot_create(idleSprite, damageSprite, runSprite, attackSprite);
/// @description Initializes a pilot NPC.
/// @param {sprite} idleSprite idle sprite.
/// @param {sprite} damageSprite damage sprite.
/// @param {sprite} runSprite run sprite.
/// @param {sprite} attackSprite attack sprite.
function pilot_create(argument0, argument1, argument2, argument3) {

	spriteIdle = argument0;
	spriteDamage = argument1;
	spriteRun = argument2;
	spriteAttack = argument3;

	//What action this npc is currently performing.
	state = pilotStates.idle; 

	//How fast the hockeyplayer accelerates and how fast they can get.
	accel =4;
	maxSpeed = 16;

	//Timers
	passiveTime = game_get_speed(gamespeed_fps) * 2;
	passiveTimer = 0;

	attackTime = game_get_speed(gamespeed_fps) * 2;
	attackTimer = 0;
}
