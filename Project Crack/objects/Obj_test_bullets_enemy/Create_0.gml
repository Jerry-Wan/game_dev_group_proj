/// @description Insert description here
// You can write your code in this editor
move_towards_point(Obj_Furry.x-5+random(10),Obj_Furry.y-5+random(10),5)
image_xscale = Obj_Furry.x<Obj_Enemy_Range.x?-1:1;
image_angle = point_direction(Obj_Enemy_Range.x,Obj_Enemy_Range.y,Obj_Furry.x, Obj_Furry.y)