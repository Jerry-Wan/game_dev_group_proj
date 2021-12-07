/// @description Insert description here
// You can write your code in this editor
if (sprite_index == Spr_Character_JumpEnd) {
    ChangeCharacterState(CharacterStates.idle);
    image_index = 0;
}

if (sprite_index == Spr_Character_AttackEmpty) {
	if(onLand){
		ChangeCharacterState(CharacterStates.idle);
	}else{
		ChangeCharacterState(CharacterStates.jump);
	}
    image_index = 0;
}

if (sprite_index == Spr_Character_AttackSword) {
    if(onLand){
		ChangeCharacterState(CharacterStates.idle);
	}else{
		ChangeCharacterState(CharacterStates.jump);
	}
    image_index = 0;
}

if (sprite_index == Spr_Character_AttackWond) {
    if(onLand){
		ChangeCharacterState(CharacterStates.idle);
	}else{
		ChangeCharacterState(CharacterStates.jump);
	}
    image_index = 0;
}

if (sprite_index == Spr_Character_Hurt) {
    if(onLand){
		ChangeCharacterState(CharacterStates.idle);
	}else{
		ChangeCharacterState(CharacterStates.jump);
	}
    image_index = 0;
}