
function PlayerStateFree(){
	// movement
	hSpeed=lengthdir_x(inputMagnitude*speedWalk,inputDirection);
	vSpeed=lengthdir_y(inputMagnitude*speedWalk,inputDirection);

	PlayerCollision();

	//update sprite index
	var _oldSprite= sprite_index;
	if(inputMagnitude!=0)
	{
		direction=inputDirection;
		sprite_index=spriteRun;
	} else sprite_index=spriteIdle;

	if(_oldSprite!=sprite_index) localFrame=0;

	//update image index
	PlayerAnimatedSprite();
	
	//change state
	if(keyActivate) 
	{
		state=PlayerStateRoll;
		moveDistanceRemaining =distanceRoll;
	}

}