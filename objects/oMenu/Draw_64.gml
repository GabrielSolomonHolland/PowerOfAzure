//Draws the menu stuff
draw_set_halign(fa_center);
draw_set_font(MenuFont);

var _gap = 40;

for (var i=0; i < array_length_1d(menu); i++)
{
	draw_set_color(c_black);
	if i == index draw_set_color(c_white);
	draw_text(room_width/2, room_height * .4 + _gap * i, menu[i]);
}



/*draw_set_font(MenuFont);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for( var i = 0; i <= menu_items; i++)
{
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor = i)
	{
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}*/

