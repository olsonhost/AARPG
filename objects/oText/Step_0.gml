lerpProgress += (1 - lerpProgress / 50);
textProgress += global.textSpeed;

x1 = lerp(x1,x1Target,lerpProgress);
x2 = lerp(x2,x2Target,lerpProgress);

// Cycle through responses
var _keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var _keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
responseSelected += (_keyDown - _keyUp);
var _max = array_length(responses)-1;
var _min = 0;
if (responseSelected > _max) responseSelected = _min;
if (responseSelected < _min) responseSelected = _max;

//if (keyboard_check_pressed(vk_space))
if (oPlayer.keyActivate)
{
	var _messageLength = string_length(textMessage ?? "Blorg!");
	if (textProgress >= _messageLength) 
	{
		instance_destroy();
		if (instance_exists(oTextQueued)) 
		{
			with (oTextQueued) ticket--;	
		} 
		else
		{
			with (oPlayer) state = lastState;
			skipStepEvent = true;
				
		}
	} 
	else 
	{
		if (textProgress > 2)
		{
			textProgress = _messageLength;		
		}
	}
}









