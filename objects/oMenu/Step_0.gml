var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(vk_enter);

var _move = _down - _up;
if _move != 0
{
	index += _move;
	
	var _size = array_length_1d(menu);
	if index < 0 index = _size - 1;
	else if index >= _size index = 0;
}

if _select {
	switch(index) {
		case 0:	
			room_goto_next();
		break;
		case 1:
			room_goto(rCredits);
		break;
		case 2:
			game_end();
		break;
	}
}