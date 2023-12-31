/// @description 
// Inherit the parent event
event_inherited();

state = ENEMYSTATE.WANDER;

// Enemy Sprites
sprMove = sSlime;
sprAttack = sSlimeAttack;
sprHurt = sSlimeHurt;
sprDie = sSlimeDie;

// Enemy Scripts
enemyScript[ENEMYSTATE.WANDER] = SlimeWander;
enemyScript[ENEMYSTATE.CHASE] = SlimeChase;
enemyScript[ENEMYSTATE.ATTACK] = SlimeAttack;
enemyScript[ENEMYSTATE.HURT] = SlimeHurt;
enemyScript[ENEMYSTATE.DIE] = SlimeDie;

// Item Drop List
entityDropList = choose
(
	[oCoin],
	[oCoin,oCoin],
	[oBombDrop],
	[oArrowDrop]
);