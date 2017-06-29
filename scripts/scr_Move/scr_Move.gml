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