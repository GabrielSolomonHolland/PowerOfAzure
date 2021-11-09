//Bobby kills you using this
with (oSlingshot) instance_destroy();
instance_change(oDeadOSRSChar,true);

direction = point_direction(other.x, other.y, x, y);
hsp = lengthdir_x(6, direction);
vsp = lengthdir_y(4, direction)-2;
if (sign(hsp) != 0) image_xscale = sign(hsp);