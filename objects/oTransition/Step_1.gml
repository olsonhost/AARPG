/// @description Progress Transistion

with (oPlayer) state = PlayerStateTransition;
// FYI if the with object does not exist, then the above code simply doesn't execute.

if(leading == OUT) 
{
	percent = min(1, percent + TRANSITION_SPEED);
	if (percent >= 1) // If screen fully obscured
	{
		room_goto(target);
		leading = IN;
	}
	
}
else // leading = IN
{
	percent = max(0, percent - TRANSITION_SPEED);
	if (percent <= 0) // If screen fully revealee
	{
		with (oPlayer) state = PlayerStateFree;
		instance_destroy();
	}
}
