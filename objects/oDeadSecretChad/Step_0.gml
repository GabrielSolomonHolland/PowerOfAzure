if (done == 0) 
{
	vsp = vsp + grv;

	//if on floor for jump
	if (place_meeting(x,y+1,oGrass)) && (key_jump)
	{
		vsp = -7;
	}

	//horo collision wall
	if (place_meeting(x+sign(hsp),y,oWall))
	{
		while(!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;

	//vert collision
	if (place_meeting(x,y + sign(vsp),oWall))
	{
		if (vsp > 0) 
		{
			done = 1;
			//image_index = 1; //For animation stuff
			alarm[0] = 60;
		}
		while (!place_meeting(x,y + sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
	
}