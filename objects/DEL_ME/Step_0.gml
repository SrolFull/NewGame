var e_check = keyboard_check_pressed(ord("E"));
var r_check = keyboard_check_pressed(ord("T"));
if(e_check && !eLastCheck)
{
	if(info.count - 1 > index) 
	{
		if(info.edges[index, selected] == "END")
		{
			global.lastDialogResult = result[i]
		}
		else
		{
			index = info.edges[index]
			selected = 0	
		}
		//text = info.texts[index];
	}
	else
	{
		global.Dialog = false;
		instance_destroy(self)
	
	}
	
}

if(r_check && !rLastCheck)
{
	selected = (selected + 1) mod info.a_count[index]
	
}

rLastCheck = r_check
eLastCheck = e_check