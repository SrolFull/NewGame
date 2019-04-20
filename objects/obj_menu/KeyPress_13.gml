switch(menu_index)
{
	//New Game
	case 0:
	room_goto_next();
		break;
	//Controls
	case 1:
		instance_create_layer(x,y,"Instances",obj_options);
		instance_destroy();
		break;
	//Exit
	case 2:
		game_end();
		break;
}