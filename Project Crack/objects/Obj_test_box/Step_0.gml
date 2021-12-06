/// @description Insert description here
// You can write your code in this editor
x = Obj_PlayerChatacter.x+10
y = Obj_PlayerChatacter.y-32
image_xscale = Obj_PlayerChatacter.image_xscale
image_yscale = Obj_PlayerChatacter.image_yscale
if (Obj_PlayerChatacter.characterState != CharacterStates.attack){
	instance_destroy()
}