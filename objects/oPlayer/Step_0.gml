/// @description Player Movement

var hInput = keyboard_check(vk_right) - keyboard_check(vk_left);

if (hInput != 0) {
	hSpeed_ += hInput * acceleration_;
	hSpeed_ = clamp(hSpeed_, -max_hSpeed, max_hSpeed);
} else {
	hSpeed_ = lerp(hSpeed_, 0, friction_);
}

if (!place_meeting(x,y + 1, oSolid)) {
	vSpeed_ += gravity_;
} else {
	if (keyboard_check_pressed(vk_up)) {
		vSpeed_ = jumpHeight_;
		xScale = image_xscale * 0.8;
		yScale = image_yscale * 1.4;
	}
}

scr_Move();

// Check for landing
if (place_meeting(x,y + 1, oSolid) && !place_meeting(x,yprevious + 1, oSolid)) {
	xScale = image_xscale * 1.4;
	yScale = image_yscale * 0.8;
}

// Move back to normal scale.
xScale = lerp(xScale, image_xscale, .1);
yScale = lerp(yScale, image_yscale, .1);
