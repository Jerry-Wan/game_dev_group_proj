/// @description shooting or attacking
// You can write your code in this editor
if canShoot = true  
{
instance_create_layer(x,y, "Instances",Obj_TestBullet);

canShoot =false;//when you fire a shot set canShoot to false
alarm[1] = 10 ;//trigger alarm 0 after 10 frames 
}
