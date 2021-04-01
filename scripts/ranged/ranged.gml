/// @function ranged_animate()
/// @description animates pilot npcs.
function ranged_animate() 
{
	switch (state)
	{
		case(rangedStates.run):
			sprite_index = spriteRun;	
		break;
		case(rangedStates.shoot):
			sprite_index = spriteAttack;
		break;
		default:
			sprite_index = spriteIdle;	
		break;
	}


}


/// @function ranged_aggressive(target)
/// @description makes this character attack the target.
/// @param target The target for the attack.
function ranged_aggressive(argument0) {

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
		state = rangedStates.run;
	} 
	//If within range fires a projectile.
	else if (_distance < LONG_RANGE)
	{
		facing = _direction;
		if (attackTimer <= 0)
		{
			state = rangedStates.shoot;
			attackTimer = attackTime;
		
			var _missile = instance_create_layer(x + (facing * 8), y, layer, bullet)
			var _facing = facing;
			var _alignment = alignment;
			with (_missile)
			{
				phys_create(0, 0, _facing * 12, 0, false);
				hurtbox_create(2, 3, 3, _alignment, false);
				image_xscale = _facing;
			}
		}
		else if (attackTimer < attackTime - 10)
		{
			state = rangedStates.idle;	
		}
	}
	//If outside of range reverts to passive behavior.
	else
	{
		ranged_passive()	
	}

}

/// @function ranged_passive()
/// @description makes this NPC move around a little.
function ranged_passive() {

	if (passiveTimer > 0)
	{
		passiveTimer--;	
	}

	//every 3 seconds decides to either wait for a bit or move around.
	if (passiveTimer <= 0)
	{
		facing = -facing;
		passiveTimer = passiveTime;
	
		state = choose(rangedStates.idle, rangedStates.run);
	}
}

/// @function ranged_initialize(idleSprite, damageSprite, runSprite, attackSprite);
/// @description Initializes an npc capable of using ranged attacks
/// @param {sprite} idleSprite idle sprite.
/// @param {sprite} damageSprite damage sprite.
/// @param {sprite} runSprite run sprite.
/// @param {sprite} attackSprite attack sprite.
/// @param {object} _bullet Object being fired.
function ranged_initialize(_spriteIdle, _spriteDamage, _spriteRun, _spriteAttack, _bullet) {

	spriteIdle = _spriteIdle;
	spriteDamage = _spriteDamage;
	spriteRun = _spriteRun;
	spriteAttack = _spriteAttack;
	bullet = _bullet;

	//What action this npc is currently performing.
	state = rangedStates.idle; 

	//How fast the hockeyplayer accelerates and how fast they can get.
	accel =4;
	maxSpeed = 16;

	//Timers
	passiveTime = game_get_speed(gamespeed_fps) * 2;
	passiveTimer = 0;

	attackTime = game_get_speed(gamespeed_fps) * 2;
	attackTimer = 0;
}
