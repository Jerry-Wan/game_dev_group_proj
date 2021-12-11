/// @description Change Weapon
// You can write your code in this editor
if(!hasSword&&!hasWond){
		//nothing happens, still empty hand.
	}
	if(hasSword&&hasWond){
		if(weaponState == WeaponStates.sword){
			weaponState = WeaponStates.wond;
			instance_create_layer(x+10,y-32, "Obstacles",Obj_Aiming);
		}else if(weaponState == WeaponStates.wond){
			weaponState = WeaponStates.sword;
		}else{
			weaponState = WeaponStates.sword;
		}
	}
	if(hasSword&&!hasWond){ weaponState = WeaponStates.sword; }//first time pick up weapon
	if(!hasSword&&hasWond){ weaponState = WeaponStates.wond; }
	