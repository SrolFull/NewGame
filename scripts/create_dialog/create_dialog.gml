var di_info_obj_ref = argument0

var di = instance_create_depth(0, 0, 0, dialog)
var di_info = instance_create_depth(0, 0, 0, di_info_obj_ref)

var base_depth = -1000
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height()
var box_height = 100

var border_height = 1

box = instance_create_depth(0, gui_h - box_height, base_depth, one_pixer)
border = instance_create_depth(0, gui_h - box_height, base_depth - 1, one_pixer)
portrait = instance_create_depth(0, gui_h - box_height + border_height, base_depth - 2, one_pixer)

box.image_xscale = gui_w
box.image_yscale = box_height
box.image_blend = c_black

border.image_xscale = gui_w
border.image_yscale = border_height
border.image_blend = c_gray

//portrait.image_alpha = 0


var els_count = 0
di.els[els_count++] = box
di.els[els_count++] = border
di.els[els_count++] = portrait

di.port = portrait
di.info = di_info
di.depth = base_depth - 10

di.port.maxh = box_height;
di.port.maxw = box_height;
return di




