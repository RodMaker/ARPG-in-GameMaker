// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AttackSlash(){
if (sprite_index != sPlayerAttackSlash)
{
	sprite_index = sPlayerAttackSlash;
	localFrame = 0;
	image_index = 0;
}

// Update Sprite
PlayerAnimateSprite();

if (animationEnd)
{
	state = PlayerStateFree;
	animationEnd = false;
}
}