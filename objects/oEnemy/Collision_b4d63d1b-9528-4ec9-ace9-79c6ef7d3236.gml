/// @description Take Damage
enemyHealth -= 1;
instance_destroy(other);

state = stateHit;
var dir = other.direction;
hSpeedPush = lengthdir_x(8, dir);
vSpeedPush = lengthdir_y(8, dir);

