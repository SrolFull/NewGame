/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("A")))
{
	if (!tile_miting(x - 10, y - 10, layer_tilemap_get_id("Tiles_1")))
		x -= 10
	image_xscale = 2
}
if (keyboard_check(ord("D")))
{
	if (!tile_miting(x + 10, y - 10, layer_tilemap_get_id("Tiles_1")))
		x += 10
	image_xscale = -2
}
if (keyboard_check_pressed(vk_space) && tile_miting(x, y + 10, layer_tilemap_get_id("Tiles_1")))
{
	speed_jump = speed_jump_max
}

show_debug_message(speed_jump)

if (tile_miting(x, y - 10, layer_tilemap_get_id("Tiles_1")))
{
	speed_jump = 0
}

if (tile_miting(x, y + 10, layer_tilemap_get_id("Tiles_1")))
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