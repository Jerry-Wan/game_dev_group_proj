/// @description Insert description here
// You can write your code in this editor

keyLeft = keyboard_check(ord("A"));
keyRight = -keyboard_check(ord("D"));
keyJump = keyboard_check_pressed(ord("W"));
keyDown = keyboard_check(ord("S"));
keyDash = mouse_check_button_pressed(mb_right)
keyUseItem = keyboard_check_pressed(vk_space);
keyAttack = mouse_check_button_pressed(mb_left);
keyAttackHeld = mouse_check_button(mb_left);

movement = keyLeft + keyRight;


horizontalSpeed = movement * -moveSpeed;
show_debug_message(horizontalSpeed);
verticalSpeed += objectGravity;

if(place_meeting(x,y,Obj_Land)&&keyJump){
	verticalSpeed = -12;
	canDoubleJump = true;
}else if(canDoubleJump&&keyJump){
	verticalSpeed = -8;
	canDoubleJump = false;
}

x += horizontalSpeed;
y += verticalSpeed;



