vsp = vsp + grv;

//Plz no walk off edges
if (grounded) && (ledgeGuard) && (place_meeting(x+hsp, y+1, oWall))
{
	hsp = -hsp;
}

//horo collision wall
if (place_meeting(x+sign(hsp),y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//vert collision
if (place_meeting(x,y + sign(vsp),oWall))
{
	while (!place_meeting(x,y + sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = -3;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oWall))
{
	grounded = false;
	//sprite_index = sBobbyR // This whole commented out chunk is if we add a falling animation
	//image_speed = 0;
	//if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sBobby;	
	}
	else
	{
		sprite_index = 	sBobbyR;
	}
}
//if (hsp != 0) image_xscale = sign(hsp);