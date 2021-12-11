
/// @description Insert description here
// You can write your code in this editor
//physics_world_update_iterations(20);            
//physics_world_update_speed(60);      

audio_play_sound(Snd_BGM,0,true);

function GoToStage(stage){
	room_goto(stage);
	audio_stop_all();
}