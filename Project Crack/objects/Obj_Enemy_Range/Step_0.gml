/// @description Insert description here
// You can write your code in this editor

if(sprite_index != Spr_Enemy_Range_Death){
var furry = instance_nearest(x,y,Obj_Furry);

if(enemyState == EnemyStates.normal){
	if(sqrt((furry.x-x)*(furry.x-x)+(furry.y-y)*(furry.y-y))<=500){
		enemyState = EnemyStates.aggresive;
	}
	
	if(HoV){
		x += enemySpeed;
	}else{
		y += enemySpeed;
	}
	
}
else if(enemyState == EnemyStates.aggresive){
	
	if(sqrt((furry.x-x)*(furry.x-x)+(furry.y-y)*(furry.y-y))>=400){
		enemyState = EnemyStates.normal;
	}
	
	if(enabled){
		if(!attackCooldown){
			attackCooldown = true;
			enemyDir = furry.x<x?-1:1;
			alarm[1] = 240;
			instance_create_layer(x,y, "Obstacles",Obj_test_bullets_enemy);
			
		}
	}
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