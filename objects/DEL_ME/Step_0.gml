var e_check = keyboard_check_pressed(ord("E"));
var r_check = keyboard_check_pressed(ord("T"));
if(e_check && !eLastCheck)
{
	//show_debug_message(string(index) + " KITTY")
	if(info.count - 1 >= index) 
	{
		if(index == 3)
			show_debug_message(string(index) + " KITTY " + string(info.edges[index, selected]))
		if(info.edges[index, selected] == "END")
		{
			show_debug_message("CAT1")
			global.lastDialogResult = info.result[index]
			global.Dialog = false;
			instance_destroy(self)
			show_debug_message("CAT2")
		}
		else
		{
			index = info.edges[index, selected]
			selected = 0	
		}
		//text = info.texts[index];
	}
	
}

if(r_check && !rLastCheck && info.a_count[index] != 0)
{
	selected = (selected + 1) mod info.a_count[index]
	
}

rLastCheck = r_check
eLastCheck = e_check