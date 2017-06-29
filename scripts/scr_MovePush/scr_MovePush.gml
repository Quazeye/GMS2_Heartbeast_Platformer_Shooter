if (place_meeting(x + hSpeedPush,y, oSolid)) {
	while (!place_meeting(x + sign(hSpeedPush),y, oSolid)) {
		x += sign(hSpeedPush);
	}
	hSpeedPush = 0;
}

x += hSpeedPush;

if (place_meeting(x,y + vSpeedPush, oSolid)) {
	while (!place_meeting(x,y + sign(vSpeedPush), oSolid)) {
		y += sign(vSpeedPush);
	}
	vSpeedPush = 0;
}

y += vSpeedPush;