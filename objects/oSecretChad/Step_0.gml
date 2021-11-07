//establish key input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W"));
key_crouch = keyboard_check(ord("S"));


//using var means it is a temp variable
//calc movement
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;


//if on floor for jump
if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7;
}


//horo collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//vert collision
if (place_meeting(x,y + vsp,oWall))
{
	while (!place_meeting(x,y + sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;