x = oChad.x + 30;
y = oChad.y - 20;

image_angle = point_direction(x, y, mouse_x, mouse_y);


firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
		firingdelay = 5;
		with (instance_create_layer(x,y,"Bombs",oFbomb))
		{
			speed = 10;
			direction = other.image_angle;
			image_angle = direction;
		}
		
}