function PlayerStateAct(){
	// Update Sprite
	PlayerAnimateSprite();
	if (animationEnd)
	{
		state = PlayerStateFree;
		anumationEnd = false;
		if (animationEndScript != -1)
		{
			script_execute(animationEndScript);	
			animationEndScript = -1;
		}
	}
}