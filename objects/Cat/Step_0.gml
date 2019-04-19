/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("A")))
{
	x -= 10
}
if (keyboard_check(ord("D")))
{
	x += 10
}
if (keyboard_check_pressed(vk_space) && place_meeting(x, y + 2, Platform))
{
	speed_jump = speed_jump_max
}

show_debug_message(speed_jump)

if (place_meeting(x, y + 1, Platform))
{
	if (speed_jump < 0)
	{
		speed_jump = 0
	}
}
else
{
	speed_jump -= 1
}
y -= speed_jump