cam_w = camera_get_view_width(view_camera[0])
cam_h = camera_get_view_height(view_camera[0])
gui_x = camera_get_view_x(view_camera[0]);
gui_y = camera_get_view_y(view_camera[0]);

spr_w = sprite_get_width(spr);
spr_h = sprite_get_height(spr);

spr_scale = box_height / spr_h 
new_spr_h = spr_h * spr_scale;
new_spr_w = spr_w * spr_scale;
font_h = font_get_size(textBoxFont)
free_width = cam_w - spr_w
text_width = string_width(text)
is_text_aligned = string_width(text) <= free_width

spr_dx = sprite_get_xoffset(spr) * spr_scale
spr_dy = sprite_get_yoffset(spr) * spr_scale

draw_sprite_ext(one_px_spr, 0, gui_x, gui_y + cam_h - box_height - 1, cam_w, 1, 0, c_dkgray, 1)
draw_sprite_ext(one_px_spr, 0, gui_x, gui_y + cam_h - box_height, cam_w, box_height, 0, c_black, 1)
draw_sprite_ext(spr, 0, gui_x + spr_dx, gui_y + spr_dy + cam_h - new_spr_h, spr_scale, spr_scale, 0, c_white, 1)
if(is_text_aligned)
	draw_text_ext(gui_x + (cam_w + new_spr_w - text_width)/2, gui_y + cam_h - box_height, text, font_h + 1, free_width)
else
	draw_text_ext(gui_x + new_spr_w, gui_y + cam_h - box_height, text, font_h + 1, free_width)
	


