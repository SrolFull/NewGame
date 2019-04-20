

if(info)
{
	var check = keyboard_check_pressed(ord("E"));
	if(check && !lastCheck)
	{
		if(array_length_1d(info.texts)-1 > index) 
		{
			index++;
			object_set_sprite(port, info.sprites[index]);
			port.image_xscale = 10;
			
		}
		else
		{
			instance_destroy(self)
		}
	}
	lastCheck = check
}