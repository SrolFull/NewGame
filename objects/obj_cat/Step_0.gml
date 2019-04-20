/// @description Insert description here
// You can write your code in this editor
if (tile_miting(x, y + 10, layer_tilemap_get_id("Tiles_1")))
{
	speed_x = 0
}

if (keyboard_check(ord("A")))
{
	if (!tile_miting(x - 10, y - 10, layer_tilemap_get_id("Tiles_1")))
	{
		x += -10
	}
	image_xscale = 1
	stuck = false
}
if (keyboard_check(ord("D")))
{
	if (!tile_miting(x + 10, y - 10, layer_tilemap_get_id("Tiles_1")))
	{
		x += 10
	}
	image_xscale = -1
	stuck = false
}
if (keyboard_check_pressed(vk_space) && tile_miting(x, y + 10, layer_tilemap_get_id("Tiles_1")))
{
	speed_y -= speed_jump_max
}

if (tile_miting(x, y - 10, layer_tilemap_get_id("Tiles_1")))
{
	speed_y = 0
	if (fly)
	{
		stuck = true
		speed_x = 0
		speed_y = 0
	}
	fly = false
}

if (tile_miting(x, y + 10, layer_tilemap_get_id("Tiles_1")))
{
	if (speed_y > 0)
	{
		speed_y = 0
	}
	fly = false
}

show_debug_message(fly)

if (tile_miting(x + 10, y - 10, layer_tilemap_get_id("Tiles_1")))
{
	show_debug_message("right")
	if (speed_x > 0)
		speed_x = 0
	if (fly)
	{
		stuck = true
		speed_x = 0
		speed_y = 0
	}
	fly = false
}

if (tile_miting(x - 10, y - 10, layer_tilemap_get_id("Tiles_1")))
{
	show_debug_message("left")
	if (speed_x < 0)
		speed_x = 0
	if (fly)
	{
		stuck = true
		speed_x = 0
		speed_y = 0
	}
	fly = false
}

if (mouse_check_button_released(mb_left) && (tile_miting(x, y + 10, layer_tilemap_get_id("Tiles_1")) || stuck))
{
	stuck = false
	l_x = mouse_x - x
	l_y = mouse_y - y
	l = sqrt(l_y * l_y + l_x * l_x)
	l_x = l_x / l
	l_y = l_y / l
	speed_y += l_y * speed_jump_max
	speed_x += l_x * speed_jump_max
	fly = true
}

if (!stuck)
{
	if (!tile_miting(x, y + 10, layer_tilemap_get_id("Tiles_1")))
	{
		speed_y += 1
	}
	x += speed_x
	y += speed_y
}



