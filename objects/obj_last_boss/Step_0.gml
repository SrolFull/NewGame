/// @description Insert description here
// You can write your code in this editor
if (time > 0)
{
		time -= 1
}
else
{
	time = random_range(20, 40)
	if (sign(random_range(-1, 1)) > 0 && instance_exists(obj_cat))
	{
		direction_x = sign(obj_cat.x - x)
	}
	else
	{
		direction_x = sign(random_range(-1, 1))
	}
}

image_xscale = -abs(image_xscale) * direction_x

if (!tile_miting(x + direction_x  * 10, y, layer_tilemap_get_id("Tiles_1")))
{
	x += direction_x * speed_x_max
}
if (!tile_miting(x, y + 5, layer_tilemap_get_id("Tiles_1")))
{
	y += 1
}