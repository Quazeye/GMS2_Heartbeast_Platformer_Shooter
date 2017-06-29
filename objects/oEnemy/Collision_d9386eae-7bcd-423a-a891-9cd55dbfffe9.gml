/// @description Soft collide
var dir = point_direction(other.x,other.y, x, y);
hSpeedPush += lengthdir_x(0.1, dir);
vSpeedPush += lengthdir_y(0.1, dir);

