/// @description Insert description here
// You can write your code in this editor

if (tile_miting(x + 20 * sign(image_xscale), y - 20, layer_tilemap_get_id("Tiles_1")))
{
	if (tile_miting(x, y + 20, layer_tilemap_get_id("Tiles_1")))
	{
		counter = 20
		speed_y = -speed_y_max
		last_x = x
	}
}

if (counter > 0)
{
	counter -= 1	
	if (counter == 0)
	{
		if (last_x - 1 < x && x < last_x + 1)
		{
			image_xscale = image_xscale * (-1)
		}
	}
}

if (tile_miting(x, y + 20, layer_tilemap_get_id("Tiles_1")))
{
	if (speed_y > 0)
	{
		speed_y = 0
	}
}
else
{
	speed_y += 1
}

if (!tile_miting(x + 20 * sign(image_xscale), y - 20, layer_tilemap_get_id("Tiles_1")))
{
	x += sign(image_xscale) * speed_x_max
}

y += speed_y