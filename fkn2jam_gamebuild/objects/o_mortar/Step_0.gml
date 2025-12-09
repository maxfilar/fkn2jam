var _m = global.PLAYER.potions.mortar_list

if pressed && array_length(_m) > 0 {
	var new_angle = point_direction(x, y, mouse_x, mouse_y)
	var diff = angle_difference(prev_mouse_angle, new_angle)
	
	image_angle -= diff * 0.8
	prev_mouse_angle = new_angle

	if diff != 0 {
		global.PLAYER.potions.cooking_progress += 0.01
	}
}

if time_after_click > 0 time_after_click --

if global.PLAYER.potions.cooking_progress >= 1 {
	var _potion = noone

	var mortar = _m

	for (var i = 0; i < array_length(global.POTIONS); i++) {
		var recipe = global.POTIONS[i].recipe
		if array_length(mortar) != array_length(recipe)
			continue
		
		var temp_list = arr_duplicate(mortar)
		var ok = true
	
		for (var j = 0; j < array_length(recipe); j++) {
			var found = false
		
			for (var k = 0; k < array_length(temp_list); k++) {
				if temp_list[k].name == recipe[j].name {
					array_delete(temp_list, k, 1)
					found = true
					break
				}
			}

			if !found {
				ok = false
				break
			}
		}
		
		if ok {
			_potion = global.POTIONS[i]
			break
		}
	}

	show_message(_potion)

	
	if _potion != noone {
		array_push(global.POTIONS_LIST,_potion)
		array_delete(_m,0,array_length(_m))
	}
	global.PLAYER.potions.cooking_progress = 0
}