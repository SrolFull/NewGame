if (instance_exists(obj_cat) and !instance_exists(obj_enemy) and abs(3400-obj_cat.x )<300 and abs(600-obj_cat.y)<200  and !global.BossSpawn){
	global.BossSpawn=true;
	instance_create_layer(3400,540,"Instances",obj_last_boss);
	CreateDialog(dlg_room1);
}