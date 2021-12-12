/// @description Insert description here
// You can write your code in this editor
var furry = instance_place(x,y,Obj_Furry);

if(furry!=noone){
	if(keyboard_check_pressed(ord("S"))){
		if(room == Resdential_Area){
			GameManager.GoToStage(Market);
		}else if(room == Market){
			GameManager.GoToStage(Industrial_Zone);
		}
	}
}