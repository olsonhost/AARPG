state = PlayerStateFree;
lastState = state;
skipStepEvent = false;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedRoll = 3.0;
distanceRoll = 52;

spriteRoll = sPlayerRoll
spriteRun = sPlayerRun;
spriteIdle = sPlayer;
localFrame = 0;



// Define these here or as vars in the step event :/

keyLeft=0;
keyRight=0;
keyUp=0;
keyDown=0;
keyActivate=0;
keyAttack=0;
keyItem=0;
inputMagnitude=0;
inputDirection=0;
