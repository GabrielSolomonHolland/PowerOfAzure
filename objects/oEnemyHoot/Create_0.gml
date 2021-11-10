//hsp = horo speed, vsp = vert speed, grv = gravity, walksp = walk speed

hsp = 0;
vsp = 0;
grv = 0.0001;
walksp = 3;
hsp = walksp;

hp = 4;
flash = 0;

if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",oHootWeapon);
	with (mygun)
	{
		owner = other.id	
	}
}
else mygun = noone;