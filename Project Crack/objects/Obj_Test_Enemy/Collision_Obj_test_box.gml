/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if hit == false{
	hit = true
	health -= 50
	alarm[0]=30
}
if health == 0{
	instance_destroy()
}