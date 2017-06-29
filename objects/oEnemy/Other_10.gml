/// @description Movement State

// Move force
var dir = point_direction(x,y, oPlayer.x, oPlayer.y);
hSpeed_ = lengthdir_x(speed_, dir);
vSpeed_ = lengthdir_y(speed_, dir);
scr_Move();

// Push force
scr_MovePush();
if (!place_meeting(x,y, oEnemy)) {
	hSpeedPush = lerp(hSpeedPush, 0, 0.1);
	vSpeedPush = lerp(vSpeedPush, 0, 0.1);
}

// Death
if (enemyHealth <= 0) {
	instance_destroy();
}

if (distance_to_object(oPlayer) < 48) {
	state = stateAttack;
}