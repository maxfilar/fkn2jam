if pressed && array_length(storage) > 0 {
	var new_angle = point_direction(x, y, mouse_x, mouse_y)
	var diff = angle_difference(prev_mouse_angle, new_angle)
	
	image_angle -= diff * 0.5
	prev_mouse_angle = new_angle

	if diff > 0 {
		global.PLAYER.cooking.clockwise_progress += 0.0025
	} else if diff < 0 {
		global.PLAYER.cooking.unclockwise_progress += 0.0025
	}
}

if time_after_click > 0 time_after_click --

if global.PLAYER.cooking.clockwise_progress >= 1 {
	var _potion = noone
	
	for (var i = 0; i < array_length(global.POTIONS); i++) {
		if array_length(storage) == array_length(global.POTIONS[i].recipe) {
			_potion = global.POTIONS[i]
			for (var j = 0; j < array_length(global.POTIONS[i].recipe); j++) {
				var _el = arr_find_el( storage, global.POTIONS[i].recipe[j].name )
				
				if _el == noone {
					_potion = noone
					break
				}
			}
			break
		}
		continue
	}
	
	if _potion != noone {
		sc_potions_add_new(global.PLAYER.inventory.list,_potion)
		array_delete(storage,0,array_length(storage))
	}
	global.PLAYER.cooking.clockwise_progress = 0
	global.PLAYER.cooking.unclockwise_progress = 0
}