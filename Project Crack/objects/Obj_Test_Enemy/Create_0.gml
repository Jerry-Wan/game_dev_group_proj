/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码
health = 100
hit = false
attackCooldown = false;
attackLast = false;
enemyDir = 0;
enabled = false;

enum EnemyStates{
	normal = 1,
	aggresive = 2
}

enemyState = EnemyStates.normal;


function GetHit(damage){
	if (hit == false){
		hit = true
		health -= damage
		alarm[0]=30
	}

	if (health == 0){
		instance_destroy()
	}
}

alarm[3] = 240;