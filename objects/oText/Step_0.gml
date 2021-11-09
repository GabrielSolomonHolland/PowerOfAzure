// @desc progress text

letters += spd;
text_current = string_copy(text,1,floor(letters));

draw_set_font(fTrebuchet);

if(h==0)
{
	h=string_height(text);
}

w = string_width(text_current);

//destroy when done, allow time to read so when a button is pressed instance is destroyed
if (letters >= length) && check_key_pressed(ord("D"))
{
instance_destroy();	
//with (oCamera) follow oPlayer;
}
