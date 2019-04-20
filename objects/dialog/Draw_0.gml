
var spr = info.sprites[index]
var text = info.texts[index];
var spr_w = sprite_get_width(spr)
var spr_h = sprite_get_height(spr)
var scale = min(port.maxh/spr_h, port.maxw/spr_w)

draw_sprite_ext(spr, 0, port.x, port.y, scale, scale, 0, c_white, 1)
var str_w = string_width(text)
var str_h = string_height(text)
draw_set_font(textBoxFont)
var scr_width = display_get_gui_width()
var scr_height = display_get_gui_height()

var dx = (scr_width + port.maxw - str_w)/2
var dy = port.y + (els[0].image_yscale - str_h) /2
draw_text(dx, dy, text)
