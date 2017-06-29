/// @description Draw the player and gun
var dir = point_direction(x,y, mouse_x,mouse_y);
var flipped = (mouse_x > x) * 2 - 1;  // Gives us -1 or 1

// Draw the player
draw_sprite_ext(sPlayer, 0, x,y, xScale * flipped, yScale, 0, image_blend, image_alpha);

// Draw the gun
draw_sprite_ext(sGun, 0, x - (4 * flipped),y - sprite_height / 2, 1, flipped, dir, image_blend, image_alpha);