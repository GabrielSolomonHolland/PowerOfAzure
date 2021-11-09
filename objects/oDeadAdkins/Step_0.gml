if (done == 0) 
{
	vsp = vsp + grv;

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
			done  = 1;
			//image_index = 1;
		}
		while (!place_meeting(x,y + sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}