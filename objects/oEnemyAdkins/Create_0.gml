//hsp = horo speed, vsp = vert speed, grv = gravity, walksp = walk speed

hsp = 0;
vsp = 0;
grv = 0.057;
walksp = 3.5;
hsp = walksp;

hp = 35;
flash = 0;


if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",oAdkinsWeapon);
	with (mygun)
	{
		owner = other.id	
	}
}
else mygun = noone;