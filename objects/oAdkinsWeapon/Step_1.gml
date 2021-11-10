x = owner.x+45;
y = owner.y-160;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oSecretChad))
{
	if (oSecretChad.x < x) image_yscale = -image_yscale;
	if (point_distance(oSecretChad.x, oSecretChad.y, x, y) < 2000)
	{
		image_angle = point_direction(x,y,oSecretChad.x,oSecretChad.y);	
		countdown--;
		if (countdown <= 0)
		{
			if (!collision_line(x,y,oSecretChad.x,oSecretChad.y,oWall,false,false))
			countdown = countdownrate;
			with (instance_create_layer(x,y,"Bombs",oLightingBolt))
			{
				speed = 4;
				direction = other.image_angle + random_range(-3,3);
				image_angle = direction;
			}
		}
	}
}