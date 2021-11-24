/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
if canShoot = true  
{
instance_create_layer(x,y, "Instances",bullet_demo);

canShoot =false;//when you fire a shot set canShoot to false
alarm[0] = 10 ;//trigger alarm 0 after 10 frames 
}
