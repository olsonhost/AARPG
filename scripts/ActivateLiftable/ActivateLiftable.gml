function ActivateLiftable(ID){
	if (global.iLifted == noone)
	{
		PlayerActOutAnimation(sPlayerLift);
		global.iLifted = ID;
		with (global.iLifted)
		{
			lifted = true
			persistent = true;
		}
	}

}