//I can't explain this just trust it works plz
var halfw = w * .5;
draw_set_color(c_black);
draw_set_alpha(.5);
draw_roundrect_ext(x-halfw-border,y-h-(2*border),x+halfw+border,y,15,15,false);
draw_sprite(sMarker,0,x,y);
draw_set_alpha(1);

//draw text
DrawText(c_white,fTrebuchet,fa_center,fa_top);
draw_text(x,y-h-border,text_current);