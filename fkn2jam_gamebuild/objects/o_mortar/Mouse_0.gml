var _mat = instance_place(x,y,o_material)
var _m = global.PLAYER.potions.mortar_list
time_after_click = 2

if global.PLAYER.triggers.picked_material {
	if _mat != noone && place_meeting(x,y,_mat) && _mat.storage != noone {
		_mat.storage.xpos = x - 32
		_mat.storage.ypos = y - 32
		array_push(_m,struct_deep_copy(_mat.storage))
		
		instance_destroy(_mat)
		
		global.PLAYER.triggers.picked_material = false
		global.PLAYER.potions.cooking_progress = 0
	}
} else {
	if point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2,
		x + sprite_width/2, y + sprite_height/2) {
		pressed = true
		prev_mouse_angle = point_direction(x, y, mouse_x, mouse_y)
	}
}