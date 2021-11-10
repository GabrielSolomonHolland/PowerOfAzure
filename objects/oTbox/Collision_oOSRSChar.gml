if (point_in_circle(oOSRSChar.x,oOSRSChar.y,x,y,rad))
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