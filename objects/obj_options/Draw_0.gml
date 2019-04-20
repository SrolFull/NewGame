var i=0;
repeat(buttons){
	draw_set_font(textBoxFont);
	draw_set_halign(fa_middle);
	draw_set_color(c_ltgray);
	
	if (menu_index == i ) draw_set_color(c_red);
	
	draw_text(x, y + button_h * i, button[i]);
	i++;
}