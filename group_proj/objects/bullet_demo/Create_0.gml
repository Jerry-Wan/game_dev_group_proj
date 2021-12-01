/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
speed = 30;
image_angle = point_direction(shoot_demo.x, shoot_demo.y, mouse_x, mouse_y)
randomize();
/*
x_angle = cos(point_direction(shoot_demo.x, shoot_demo.y, mouse_x, mouse_y)/180*pi)
y_angle = sin(point_direction(shoot_demo.x, shoot_demo.y, mouse_x, mouse_y)/180*pi)*-1
show_debug_message(point_direction(shoot_demo.x, shoot_demo.y, mouse_x, mouse_y)/180*pi)
show_debug_message(x_angle)
show_debug_message(y_angle)
show_debug_message("           ")
*/
move_towards_point(mouse_x-5+random(10),mouse_y-5+random(10),30)


show_debug_message(mouse_x-x)
show_debug_message(mouse_y-y)
show_debug_message(" ")