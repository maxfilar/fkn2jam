var _mat = instance_place(x,y,o_material)
var _m = global.PLAYER.potions.mortar_list
time_after_click = 2

if global.PLAYER.triggers.picked_material {
	if _mat != noone && place_meeting(x,y,_mat) && _mat.storage != noone && array_length(_m) < 3 {
		var _is_potion = false
		var _p = global.POTIONS
		
		for (var i = 0; i < array_length(_p); i++) {
			if _mat.storage.name == _p[i].name {
				_is_potion = true
				break
			}
		}
		
		if _is_potion {
			var _e = global.PLAYER.elixir.recipe
	
			for (var i = 0 ; i < array_length(_e); i++) {
				if _mat.storage.name == _e[i].name {
					_e[i].collected = true
					array_push(global.PLAYER.elixir.list,_mat.storage)
					instance_destroy(_mat)
					global.PLAYER.triggers.picked_material = false
					break
				}
			}
		} else {
			_mat.storage.xpos = x - 32
			_mat.storage.ypos = y - 32
			array_push(_m,struct_deep_copy(_mat.storage))
		
			instance_destroy(_mat)
		
			global.PLAYER.triggers.picked_material = false
			global.PLAYER.potions.cooking_progress = 0
		}
	}
} else {
	if point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2,
		x + sprite_width/2, y + sprite_height/2) {
		pressed = true
		prev_mouse_angle = point_direction(x, y, mouse_x, mouse_y)
	}
}