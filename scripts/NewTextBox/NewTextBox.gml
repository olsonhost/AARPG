function NewTextBox(_message, _background = 1, _responses = [])
{
	var _obj = instance_exists(oText) ? oTextQueued : oText;
	responseScripts = [-1];
	with (instance_create_layer(0, 0, "Instances", _obj))
	{
		textMessage = _message;
		background = _background;
		originInstance = instance_exists(other) ? other.id : noone;
		responses = _responses;
		for (var i = 0; i < array_lengh(responses); i++)
		{
			var _markerPosition = string_pos(":", responses[i]);
			responseScripts[i] = string_copy(responses[i], 1, _markerPosition-1);
			responseScripts[i] = real(responseScripts[i]);
			responses[i] = string_delete(responses[i],1,_markerPosition);
		}
		
		
		
	}
	
	with (oPlayer)
	{
		if (state != PlayerStateLocked)
		{
			lastState = state;
			state = PlayerStateLocked;
		}
	}
}