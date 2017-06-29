/// @description Hit State

// Push force
scr_MovePush();
hSpeedPush = lerp(hSpeedPush, 0, 0.1);
vSpeedPush = lerp(vSpeedPush, 0, 0.1);

if (point_distance(0,0, hSpeedPush, vSpeedPush) < 1) {
	state = stateMovement;
}