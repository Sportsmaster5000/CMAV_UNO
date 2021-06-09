/// @description If the player hits an explosion they are damaged.

var _explosion = other;
var _knockbackDir = sign(x - _explosion.x);

if (invincibility <= 0)
{
    ps_pinkSlime_damage(PS_DAMAGE, PS_KNOCKBACK * _knockbackDir, -PS_KNOCKBACK);
    invincibility = PS_INVINCIBILITY;
}

