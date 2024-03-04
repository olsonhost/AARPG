function NewTextBox(_message, _background = 1, _responses = [])
{
	var _obj = instance_exists(oText) ? oTextQueued : oText;

	with (instance_create_layer(0, 0, "Instances", _obj))
	{
		responseScripts = [-1];
		responses = [-1];
		textMessage = _message;
		background = _background;
		originInstance = instance_exists(other) ? other.id : noone;

		for (var i = 0; i < array_length(_responses); i++)
		{
			responses[i] = _responses[i]; // I added this because you couldn't repeat NPC text, _responses must be byref
			var _markerPosition = string_pos(":", responses[i]);
			responseScripts[i] = real( string_copy(responses[i], 1, _markerPosition - 1) );
			responses[i] = string_delete(responses[i],1,_markerPosition);
		} 
		
	} // There is no else here unlike the video
	
	with (oPlayer)
	{
		if (state != PlayerStateLocked)
		{
			lastState = state;
			state = PlayerStateLocked;
		}
	}
}