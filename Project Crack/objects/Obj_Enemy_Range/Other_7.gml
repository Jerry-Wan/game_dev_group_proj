/// @description Insert description here
// You can write your code in this editor
if(sprite_index == Spr_Enemy_Range_Hurt){
	sprite_index = Spr_Enemy_Range_Idle;
	image_index = 0;
}
if(sprite_index == Spr_Enemy_Range_Death){
	instance_destroy();
}

