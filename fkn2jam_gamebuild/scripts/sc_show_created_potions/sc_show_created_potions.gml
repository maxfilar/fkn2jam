// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_show_created_potions(){
	for (var i = 0; i < array_length(global.POTIONS_LIST); i++) {
		var _p = instance_create_layer(
			global.PLAYER.potions.xpos + i * 144,
			global.PLAYER.potions.ypos,
			"Instances",
			o_potion
		)
			
		with _p {
			storage = global.POTIONS_LIST[i]
			storage.count = 1
			index = i
		}
	}
}