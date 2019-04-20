global.pause = true;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

global.key_revert = ord("X");
global.key_enter = vk_enter;
global.key_left = ord("A");
global.key_right = ord("R");
global.key_up = ord("W");
global.key_down = ord("D");

display_set_gui_size(global.view_width,global.view_height);

enum menu_page{
	main ,
	settgins,
	audio ,
	controls
}

enum menu_element_type{
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

//create menu
ds_menu_main = create_menu_page(
	["Resume", menu_element_type.script_runner , resume_game],
	["Settings", menu_element_type.page_transfer, menu_page_settings],
	["Exit", menu_element_type.script_runner, exit_game]

);
ds_settings = create_menu_page(
	["Audio", menu_element_type.page_transfer, menu_page.audio],
	["Difficulty", menu_element_type.page_transfer, menu_page.difficulty],
	["Controls", menu_element_type.page_transfer, menu_page.controls],
	["Back", menu_element_type.page_transfer, menu_page.main]
	
);
ds_menu_audio = create_menu_page(
	["Master", menu_element_type.slider, change_volume, 1,[0,1]]
	["Sounds", menu_element_type.slider, change_volume, 1,[0,1]]
	["Music", menu_element_type.slider, change_volume, 1,[0,1]]
	["Back", menu_element_type.page_transfer, menu_page.main]
);
ds_menu_controls = create_menu_page(
	["Up", menu_element_type.input, "W", ord("W")],
	["Down", menu_element_type.input, "D", ord("D")],
	["Left", menu_element_type.input, "L", ord("L")],
	["Right", menu_element_type.input, "R", ord("R")]
);