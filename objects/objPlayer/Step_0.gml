vspeed = 0;
hspeed = 0;

var newSprite = sprite_index; // Create new sprite

// Move
if (keyboard_check(ord("A")))
{
	hspeed -= maxVel;
	newSprite = sprPlayerLeft;
}

if (keyboard_check(ord("D")))
{
	hspeed += maxVel;
	newSprite = sprPlayerRight;
}

if (keyboard_check(ord("W")))
{
	vspeed -= maxVel;
	newSprite = sprPlayerUp;
}

if (keyboard_check(ord("S")))
{
	vspeed += maxVel;
	newSprite = sprPlayerDown;
}

// Set sprite
if (sprite_index != newSprite)
{
	sprite_index = newSprite;
}

if (vspeed == 0 && hspeed == 0)
{
	image_speed = 0;
}
else
{
	image_speed = 1;
}

// Life
if (life <= 0)
{
	instance_destroy();
	//audio_play_sound(sndDeath, 1, false);
}