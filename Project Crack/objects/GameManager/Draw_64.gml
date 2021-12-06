/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
draw_sprite(Spr_Health_bar,0,0,0)
draw_sprite(Spr_MP_bar,0,0,70)
draw_healthbar(70,10,366,50,Obj_PlayerChatacter.hp,c_black, c_red, c_lime, 0, true, false)
draw_healthbar(70,80,366,120,Obj_PlayerChatacter.mp,c_black, c_blue, c_blue, 0, true, false)