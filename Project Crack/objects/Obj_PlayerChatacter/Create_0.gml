/// @description Insert description here
// You can write your code in this editor

enum CharacterStates{
	 idle = 0,
	 run = 1,
	 jump = 2,
	 attack = 3,
	 hurt = 4
}
enum WeaponStates{
	empty = 0,
	sword = 1,
	wond = 2
}

global.hp = 100
global.mp = 100

//shoot cd
ableToShoot = true


function GetDamage(){
	if(!invincible){
		global.hp -= 25;
		invincible = true;
		ChangeCharacterState(CharacterStates.hurt);
		alarm[0] = 120;
	}
}

characterState = CharacterStates.idle;
weaponState = WeaponStates.empty;

function ChangeCharacterState(state){
	characterState = state;
	
	switch(characterState){
		case CharacterStates.idle:
			ChangeWeaponState(CharacterStates.idle, weaponState);
			break;
		case CharacterStates.run:
			ChangeWeaponState(CharacterStates.run, weaponState);
			break;
		case CharacterStates.jump:
			break;
		case CharacterStates.attack:
			ChangeWeaponState(CharacterStates.attack, weaponState);
			break;
		case CharacterStates.hurt:
			sprite_index = Spr_Character_Hurt;
			break;
	
	}
}

function ChangeWeaponState(character_state, weapon_state){
	if(character_state == CharacterStates.idle){
		switch(weapon_state){
			case WeaponStates.empty:
				sprite_index = Spr_Character_IdleEmpty;
				break;
			case WeaponStates.sword:
				sprite_index = Spr_Character_IdleSword;
				break;
			case WeaponStates.wond:
				sprite_index = Spr_Character_IdleWond;
				break;
		}
	}else if(character_state == CharacterStates.run){
		switch(weapon_state){
			case WeaponStates.empty:
				sprite_index = Spr_Character_RunEmpty;
				break;
			case WeaponStates.sword:
				sprite_index = Spr_Character_RunSword;
				break;
			case WeaponStates.wond:
				sprite_index = Spr_Character_RunWond;
				break;
		}
	}else if(character_state == CharacterStates.attack){
		switch(weapon_state){
			case WeaponStates.empty:
				sprite_index = Spr_Character_AttackEmpty;
				break;
			case WeaponStates.sword:
				sprite_index = Spr_Character_AttackSword;
				break;
			case WeaponStates.wond:
				sprite_index = Spr_Character_AttackWond;
				break;
		}
	}
}

function SwitchWeapon(){
	if(!global.hasSword&&!global.hasWond){
		//nothing happens, still empty hand.
	}
	if(global.hasSword&&global.hasWond){
		if(weaponState == WeaponStates.sword){
			weaponState = WeaponStates.wond;
			instance_create_layer(x+10,y-32, "Obstacles",Obj_Aiming);
		}else if(weaponState == WeaponStates.wond){
			weaponState = WeaponStates.sword;
		}else{
			weaponState = WeaponStates.sword;
		}
	}
	if(global.hasSword&&!global.hasWond){ weaponState = WeaponStates.sword; }//first time pick up weapon
	if(!global.hasSword&&global.hasWond){ weaponState = WeaponStates.wond; }

}

if(global.hasSword||global.hasWond){
	SwitchWeapon();
}


ChangeCharacterState(CharacterStates.idle);
