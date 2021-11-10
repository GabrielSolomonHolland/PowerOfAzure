if (hp <= 0)
{
	instance_create_layer(x,y,layer,oDeadAdkins);	
	with (mygun) instance_destroy();
	instance_destroy();
}