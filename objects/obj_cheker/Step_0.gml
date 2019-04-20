if (!instance_exists(obj_enemy) and abs(1600-obj_cat.x )<300 and abs(600-obj_cat.y)<200  and !global.BossSpawn){
	global.BossSpawn=true;
	instance_create_layer(1600,550,"Instances",obj_boss);
	CreateDialog(cat_dialog1);
}