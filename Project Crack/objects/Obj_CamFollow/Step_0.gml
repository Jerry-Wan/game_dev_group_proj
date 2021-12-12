xBorderLeft = 0;
xBorderRight = 378;
yBorderUp = 0;
yBorderDown = 192;

var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);
var vpos_w = camera_get_view_width(view_camera[0]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[0]) * 0.5;

var rate = 0.05;

var new_x = lerp(vpos_x, Obj_Furry.x - vpos_w, rate);
var new_y = lerp(vpos_y, Obj_Furry.y - vpos_h, rate);

if(new_x<xBorderLeft){new_x = xBorderLeft;}
if(new_x>xBorderRight){new_x = xBorderRight;}
if(new_y<yBorderUp){new_y = yBorderUp;}
if(new_y>yBorderDown){new_y = yBorderDown;}

camera_set_view_pos(view_camera[0], new_x, new_y);