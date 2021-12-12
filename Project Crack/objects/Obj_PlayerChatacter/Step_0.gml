/// @description Insert description here
// You can write your code in this editor

//Input management
keyLeft = keyboard_check(ord("A"));
keyRight = -keyboard_check(ord("D"));
keyJump = keyboard_check_pressed(ord("W"));
keyDown = keyboard_check(ord("S"));
keyDash = mouse_check_button_pressed(mb_right)
keyUseItem = keyboard_check_pressed(vk_space);
keyAttack = mouse_check_button_pressed(mb_left);
keyAttackHeld = mouse_check_button(mb_left);
keySwitchWeapon = keyboard_check(ord("R"));


movement = keyLeft + keyRight;
horizontalSpeed = movement * -moveSpeed;
verticalSpeed += characterGravity;


//Land/floating Check
if(onLand){
	if(characterState!=CharacterStates.jump&&characterState!=CharacterStates.attack&&characterState!=CharacterStates.hurt){
		if(movement>0){
			ChangeCharacterState(CharacterStates.run);
			image_xscale = -1;
		}else if(movement<0){
			ChangeCharacterState(CharacterStates.run);
			image_xscale = 1;
		}else{
			ChangeCharacterState(CharacterStates.idle);
		}
	}	
}else{
	if(characterState == CharacterStates.jump&&characterState!=CharacterStates.attack&&characterState!=CharacterStates.hurt){
		
		if(movement>0){
			image_xscale = -1;
		}else if(movement<0){
			image_xscale = 1;
		}
		
		if(verticalSpeed<0){
			sprite_index = Spr_Character_JumpUp;
		}else{
			sprite_index = Spr_Character_JumpDown;
		}
	}
}



// Horizontal block
if(place_meeting(x+horizontalSpeed,y,Obj_SafeObstacle)){
	while(!place_meeting(x+sign(horizontalSpeed),y, Obj_SafeObstacle)){
		x+=sign(horizontalSpeed);
	}
	horizontalSpeed = 0;
}
x += horizontalSpeed;

var safeObstacle = instance_place(x,y+verticalSpeed,Obj_SafeObstacle)
//Vertical block
if(safeObstacle!=noone){
	while(!place_meeting(x,y+sign(verticalSpeed), Obj_SafeObstacle)){
		
		y+=sign(verticalSpeed);
	}
	verticalSpeed = 0;
	if(safeObstacle.y>y){
		onLand = true;
		if(characterState == CharacterStates.jump){
			sprite_index = Spr_Character_JumpEnd;
		}
	}
	
	
}
//show_debug_message(safeObstacle);
y += verticalSpeed;

//Jump
if(place_meeting(x,y+1, Obj_SafeObstacle)&&keyJump){
	verticalSpeed = -25;
	onLand = false;
	ChangeCharacterState(CharacterStates.jump);
}

//SwitchWeapon
/*
if(keySwitchWeapon){
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
}
*/

//Attadck
if(keyAttack){
	ChangeCharacterState(CharacterStates.attack);
	//decide whether create hitbox or shoot base on weaponState
	if(weaponState == WeaponStates.sword){
		if image_xscale >0{ 
			instance_create_layer(x+30,y, "Obstacles",Obj_hitbox_sword);
		}
		else{
			instance_create_layer(x-62,y, "Obstacles",Obj_hitbox_sword);
		}
	}
	if(weaponState == WeaponStates.empty){
		if image_xscale >0{ 
			instance_create_layer(x+30,y, "Obstacles",Obj_hitbox_empty);
		}
		else{
			instance_create_layer(x-62,y, "Obstacles",Obj_hitbox_empty);
		}
	}
	if(weaponState == WeaponStates.wond){
		if global.mp >= 10 and ableToShoot == true{
			if mouse_x <x{
				image_xscale = -1;
			}
			if mouse_x >x{
				image_xscale = 1;
			}
			instance_create_layer(x+30,y, "Obstacles",Obj_test_bullets);
			global.mp -= 10
			ableToShoot = false
			alarm[1] = 50
		}
	}
	
}
