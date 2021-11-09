//x = oSecretChad.x + 30;
//y = oSecretChad.y - 20;
//x = oChad.x + 22;
//y = oChad.y-5;
x = oOSRSChar.x + 22
y = oOSRSChar.y +1
image_angle = point_direction(x, y, mouse_x, mouse_y);


firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
		firingdelay = 25;
		with (instance_create_layer(x,y,"Bombs",oFbomb))
		{
			speed = 8;
			direction = other.image_angle;
			image_angle = direction;
		}
		
}