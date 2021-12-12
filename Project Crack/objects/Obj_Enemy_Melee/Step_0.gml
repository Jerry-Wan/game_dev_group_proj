/// @description Insert description here
// You can write your code in this editor

if(sprite_index != Spr_Enemy_Melee_Death){
var furry = instance_nearest(x,y,Obj_Furry);

if(enemyState == EnemyStates.normal){
	if(abs(furry.x-x)<=100){
		enemyState = EnemyStates.aggresive;
	}
}
else if(enemyState == EnemyStates.aggresive){
	if(enabled){
		if(!attackCooldown){
			attackCooldown = true;
			attackLast = true;
			enemyDir = furry.x<x?-1:1;
			alarm[1] = 240;
			alarm[2] = 40;
		}
		
		if(attackLast){
			if(enemyDir == -1){
				image_xscale = -1;
				enemySpeed = -7.5;
			}else{
				image_xscale = 1;
				enemySpeed = 7.5;
			}
			sprite_index = Spr_Enemy_Melee_Attack;
		}else{	
			enemySpeed = 0;
			sprite_index = Spr_Enemy_Melee_Idle;
		}
	}
}

horizontalSpeed = enemySpeed;
verticalSpeed += enemyGravity;

if(place_meeting(x+horizontalSpeed,y,Obj_SafeObstacle)){
	while(!place_meeting(x+sign(horizontalSpeed),y, Obj_SafeObstacle)){
		x+=sign(horizontalSpeed);
	}
	horizontalSpeed = 0;
}
x += horizontalSpeed;

var safeObstacle = instance_place(x,y+verticalSpeed,Obj_SafeObstacle);

if(safeObstacle!=noone){
	while(!place_meeting(x,y+verticalSpeed, Obj_SafeObstacle)){
		y+=sign(verticalSpeed);
	}
	verticalSpeed = 0;
}
y += verticalSpeed;

var hitFurry = instance_place(x,y+verticalSpeed,Obj_Furry);

if(hitFurry!=noone&&enemySpeed!=0){
	hitFurry.GetDamage();
}


var hitboxE = instance_place(x,y,Obj_hitbox_empty);
var hitboxS = instance_place(x,y,Obj_hitbox_sword);
var hitbullet = instance_place(x,y,Obj_test_bullets);

if(hitboxE!=noone){
	GetHit(34);
}
if(hitboxS!=noone){
	GetHit(50);
}
if(hitbullet!=noone){
	GetHit(25);
}
}