//Move to next level
audio_stop_sound(Adventure);
with (oOSRSChar)
{
	if (hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,OSRSLobby);
	}
}
