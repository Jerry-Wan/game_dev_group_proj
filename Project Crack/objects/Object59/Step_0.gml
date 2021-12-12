/// @description Insert description here
// You can write your code in this editor
var furry = instance_place(x,y-1,Obj_Furry);

if(furry!=noone){
	if(furry.y<y){
		furry.x+=2;
	}
}

