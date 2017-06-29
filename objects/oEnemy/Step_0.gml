/// @description Move towards the player
var dir = point_direction(x,y, oPlayer.x, oPlayer.y);
hSpeed_ = lengthdir_x(speed_, dir);
vSpeed_ = lengthdir_y(speed_, dir);
scr_Move();
