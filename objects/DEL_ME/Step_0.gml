var check = keyboard_check_pressed(ord("E"));
if(check && !lastCheck)
{
	if(info.count - 1 > index) 
	{
		index++;
		spr = info.sprites[index];
		text = info.texts[index];
	}
	else
	{
	global.Dialog = false;
	global.BossIsDead = true;
	instance_destroy(self)
	
	}
	
}
lastCheck = check