//Setups Transition Stuff
w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
enum TRANS_MODE
{
	OFF = 5, 
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
//TRANS_MODE.OFF;
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
