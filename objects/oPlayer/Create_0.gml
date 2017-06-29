/// @description Create the variables

hSpeed_ = 0;
max_hSpeed = 4;
vSpeed_ = 0;
gravity_ = .5;
acceleration_ = 1;
friction_ = 0.3;
jumpHeight_ = -10;

// Map the keys
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("S"), vk_down);

// Bullet cooldown
bulletCooldown = room_speed / 6;
alarm[0] = bulletCooldown;

// Scale variables
xScale = image_xscale;
yScale = image_yscale;
