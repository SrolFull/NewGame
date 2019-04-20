global.Dialog = true;
var obj_dialog_ref = argument0
var dialog_info = instance_create_depth(0, 0, 0, obj_dialog_ref)

var di = instance_create_depth(0, 0, 0, DEL_ME)
di.info = dialog_info
di.info.count = array_length_1d(di.info.texts)

di.spr = di.info.sprites[0]
di.text = di.info.texts[0]
return di