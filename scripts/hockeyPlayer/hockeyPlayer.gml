/// @function hockeyPlayer_aggressive(target)
/// @description makes the hockey player attack the target.
/// @param target The target for the attack.
function hockeyPlayer_aggressive(argument0) {

	var _target = argument0;
	var _direction = sign(_target.x - x);
	var _distance = distance_to_object(_target);

	//Decrements attack timer.
	if (attackTimer > 0)
	{
		attackTimer--;	
	}

	//Decides what state to enter.

	//Being in melee locks the hockeyplayer out of performing other actions.
	if (state != hockeyPlayerStates.melee)
	{

		if (_distance < CLOSE_RANGE)
		{
			if (attackTimer <= 0)
			{
				state = hockeyPlayerStates.melee;
			
				//Spawns hurtbox and initializes variables.
				melee = instance_create_layer(x, y, layer, obj_hockeyPlayerMelee);
				var _alignment = alignment;
				with (melee)
				{
					owner = other;
					hurtbox_create(1, 3, 3, _alignment, true);
				}
			
				//Resets timer.
				attackTimer = attackTime;
			}
		}
		else if (_distance < LONG_RANGE)
		{
			facing = _direction;
			state = hockeyPlayerStates.run;
		}
		//If outside of range reverts to passive behavior.
		else
		{
			hockeyPlayer_passive()	
		}	
	}
	else
	{
			if !(instance_exists(melee))
			{
				state = hockeyPlayerStates.idle;
			}	
	}
}

/// @function hockeyPlayer_animate()
/// @description animates the hockey player.
function hockeyPlayer_animate() {
	switch (state)
	{
		case(hockeyPlayerStates.run):
			sprite_index = spriteRun;	
		break;
		case(hockeyPlayerStates.melee):
			sprite_index = spriteAttack;
		break;
		default:
			sprite_index = spriteIdle;	
		break;
	}
}


/// @function hockeyPlayer_create(idleSprite, damageSprite, runSprite, attackSprite);
/// @description Initializes a hockey player NPC.
/// @param {sprite} idleSprite idle sprite.
/// @param {sprite} damageSprite damage sprite.
/// @param {sprite} runSprite run sprite.
/// @param {sprite} attackSprite attack sprite.
function hockeyPlayer_create(argument0, argument1, argument2, argument3) {

	spriteIdle = argument0;
	spriteDamage = argument1;
	spriteRun = argument2;
	spriteAttack = argument3;

	//What action this npc is currently performing.
	state = hockeyPlayerStates.idle; 

	//How fast the hockeyplayer accelerates and how fast they can get.
	accel = 3;
	maxSpeed = 4;

	//Timers
	passiveTime = game_get_speed(gamespeed_fps) * 3;
	passiveTimer = 0;

	attackTime = game_get_speed(gamespeed_fps) * 2;
	attackTimer = 0;

	//Pointer to any melee hurtbox this instance has created.
	melee = noone;


}


/// @function hockeyPlayer_passive()
/// @description makes this NPC move around a little.
function hockeyPlayer_passive() {

	if (passiveTimer > 0)
	{
		passiveTimer--;	
	}

	//every 3 seconds decides to either wait for a bit or move around.
	if (passiveTimer <= 0)
	{
		facing = -facing;
		passiveTimer = passiveTime;
	
		state = choose(hockeyPlayerStates.idle, hockeyPlayerStates.run);
	}


}
