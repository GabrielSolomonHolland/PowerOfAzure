var halfw = w * .5;
draw_set_color(c_black);
draw_set_alpha(.5);
draw_roundrect(x-halfw-border,y-h-(2*border),x+halfw+border,y,15,15,false);
draw_sprite(sMarker,0,x,y);