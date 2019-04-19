/// @description Insert description here
// You can write your code in this editor
//collisions around portal(activate animation)
if (place_meeting(x,y-20,obj_cat)){
	layer_sprite_speed(spr_hell_gate,15);	
}
//collisions with portal
if (place_meeting(x,y,obj_cat)){
	room_goto("room_start");
}