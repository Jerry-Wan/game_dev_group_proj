/// @description Insert description here
// You can write your code in this editor
var enemyMelee = instance_place(x,y,Obj_Enemy_Melee);
//Vertical block
if(enemyMelee!=noone){
	enemyMelee.GetHit(25);
	instance_destroy();
}

var enemyRange = instance_place(x,y,Obj_Enemy_Range);
//Vertical block
if(enemyRange!=noone){
	enemyRange.GetHit(25);
	instance_destroy();
}

var safeObs = instance_place(x,y,Obj_SafeObstacle);
//Vertical block
if(safeObs!=noone){
	
	instance_destroy();
}