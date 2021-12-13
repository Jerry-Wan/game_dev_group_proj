/// @description Insert description here
// You can write your code in this editor
var furry = instance_place(x,y,Obj_Furry);

if(furry!=noone){
	global.hasWond = true;
	
	furry.SwitchWeapon();
	
	instance_destroy();
}