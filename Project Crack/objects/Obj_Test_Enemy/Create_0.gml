/// @description Insert description here
// You can write your code in this editor
selfhealth = 100
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
randomize();

function GetHit(damage){
	if (hit == false){
		hit = true
		selfhealth -= damage
		alarm[0]=30
	}

	if (selfhealth == 0){
		instance_destroy()
		prob = random(10)
		if (prob <4){
			var mpBottle = instance_create_layer(x+10,y-32, "Obstacles",Obj_test_mp_bottle);
			if x <Obj_Furry.x{
				mpBottle.inverse = -1
			}
		}
	}
}

alarm[3] = 240;