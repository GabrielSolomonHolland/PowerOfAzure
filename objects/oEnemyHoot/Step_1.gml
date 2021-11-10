if (hp <= 0)
{
	instance_create_layer(x,y,layer,oDeadHoot);	
	with (mygun) instance_destroy();
	instance_destroy();
}