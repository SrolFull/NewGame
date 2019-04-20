if (place_meeting(x,y,obj_cat) and ((global.BossSpawn and global.BossIsDead) or room == room0))
{
	room_goto_next();
}