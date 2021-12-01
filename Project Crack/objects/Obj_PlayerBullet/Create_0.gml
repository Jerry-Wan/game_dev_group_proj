/// @description Insert description here
// You can write your code in this editor
randomize()
speed = 30;
image_angle = point_direction(Obj_KingOfTheRoll.x, Obj_KingOfTheRoll.y, mouse_x, mouse_y)

move_towards_point(mouse_x-5+random(10),mouse_y-5+random(10),speed)