/// @description Player Movement

var hInput = keyboard_check(vk_right) - keyboard_check(vk_left);

if (hInput != 0) {
	hSpeed_ += hInput * acceleration_;
	hSpeed_ = clamp(hSpeed_, -max_hSpeed, max_hSpeed);
} else {
	hSpeed_ = lerp(hSpeed_, 0, .3);
}

if (!place_meeting(x,y + 1, oSolid)) {
	vSpeed_ += gravity_;
} else {
	if (keyboard_check_pressed(vk_up)) {
		vSpeed_ = -16;
	}
}

if (place_meeting(x + hSpeed_,y, oSolid)) {
	while (!place_meeting(x + sign(hSpeed_),y, oSolid)) {
		x += sign(hSpeed_);
	}
	hSpeed_ = 0;
}

x += hSpeed_;

if (place_meeting(x,y + vSpeed_, oSolid)) {
	while (!place_meeting(x,y + sign(vSpeed_), oSolid)) {
		y += sign(vSpeed_);
	}
	vSpeed_ = 0;
}

y += vSpeed_;
