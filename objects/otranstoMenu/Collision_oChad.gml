//Move to next level
if (audio_is_playing(Adventurs_of_Azure))
{
	audio_stop_sound(Adventurs_of_Azure)
}
with (oChad)
{
	if (hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,Menu);
	}
}