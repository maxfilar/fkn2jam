// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_show_recipes(){
	var _p = global.POTIONS

	var columns = 5
	var cell_w = 276
	var cell_h = 400

	var x_start = 256
	var y_start = 32

	for (var i = 0; i < array_length(_p); i++) {
		var col = i mod columns
		var row = i div columns
		
		var xx = x_start + col * cell_w
		var yy = y_start + row * cell_h
		
		var inst = instance_create_layer(xx, yy, "Instances", o_recipe)

		with inst {
			storage = _p[i]
		}	
	}

}