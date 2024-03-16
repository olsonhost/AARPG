function PlayerActOutAnimation(Sprite, EndScript = -1){
	// Carry out an animation and optionally carry out a script when the animation ends
	
	state = PlayerStateAct;
	sprite_index = Sprite;
	if (argument_count > 0) animationEndScript = EndScript;
	localFrame = 0;
	image_index = 0;
	PlayerAnimateSprite();
}