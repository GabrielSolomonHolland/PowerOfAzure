//Slide Transition(mode, targetroom)
//Mode sets transition mode
//Targetroom is the target room for goto mode

with (oTransition)
{
	mode = argument[0];
	if (argument_count > 1) target = argument[1];
}
