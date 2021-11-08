//Updates camera

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	
	//When dead for Chad
	if(follow.object_index == oDeadChad)
	{
		x = xTo;
		y = yTo;
	}
	//When dead for SecretChad
	if(follow.object_index == oDeadSecretChad)
	{
		x = xTo;
		y = yTo;
	}
}

//Update object position
x += (xTo - x) / 25;
y += (yTo - y) /25;
x = clamp(x,view_w_half, room_width-view_w_half);
y = clamp(y,view_h_half, room_height-view_h_half);


//Update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);
