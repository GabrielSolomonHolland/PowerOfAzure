/// @desc ?

//if chad is within 64 pixels of x,y, this x y will be the sign
//so this checks if you're within 64 pixels of the sign


//with this 'player' deal you can edit the variables in each instance to customize text
//and what player is interacting
if (point_in_circle(player.x,player.y,x,y,64)) && (!instance_exists(oText))
{
	with (instance_create_layer(x,y-64,layer,oText))
	{
		text = other.text;
		length = string_length(text);
	}
	
	//with (oCamera)
	//{
	//	follow = other.id;
	//}
	
}