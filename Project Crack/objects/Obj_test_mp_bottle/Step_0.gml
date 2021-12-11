/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码

var fur = instance_place(x,y,Obj_Furry);

if(fur!=noone){
	if touch == true{
		instance_destroy()
		global.mp+=10
	}
}