// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	// Movement
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

	PlayerCollision();

	// Update Sprite Index
	var _oldSprite = sprite_index;
	if (inputMagnitude != 0)
	{
		direction = inputDirection;
		sprite_index = spriteRun;
	} else sprite_index = spriteIdle;
	if(_oldSprite != sprite_index) localFrame = 0;

	// Update image index
	PlayerAnimateSprite();
	
	if (keyAttack)
	{
		state = PlayerStateAttack;
		stateAttack = AttackSlash;
	}

	// Activate Key Logic
	if(keyActivate) {

		// 1. check for an entity to activate
		// 2. if there is nothing or there is something but it has no script - Roll!
		// 3. Otherwis, there is something and it has a script - Activate!
		// 4. If the thing we activate is NPC make it face towards us

		var _activateX = lengthdir_x(18, direction); 
		var _activateY = lengthdir_y(18, direction); 
		activate = instance_position(x + _activateX, y + _activateY, pEntity);
		//activate = instance_position(x + _activateX, y - 8 + _activateY, pEntity);
		
		if(activate == noone || activate.entityActivateScript == -1)
		{
			state = PlayerStateRoll;
			moveDistanceRemaining = distanceRoll;		
		}
		else
		{
			// Activate the entity
			script_execute_ext(activate.entityActivateScript, activate.entityActivateArgs);
			// Make NPC face player
			if (activate.entityNPC) 
			{
				with (activate)
				{
					direction =	point_direction(x,y,other.x,other.y);
					image_index = CARDINAL_DIR;
				}
			}
		}
	}
}