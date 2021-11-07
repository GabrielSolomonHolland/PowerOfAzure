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
	vsp = 0;
}
y = y + vsp;

//Grounded variable for ledge guarding (Can be used later to help implement animation stuff)
if (!place_meeting(x,y+1,oWall))
{
	grounded = false;
}
else
{
	grounded = true;
}