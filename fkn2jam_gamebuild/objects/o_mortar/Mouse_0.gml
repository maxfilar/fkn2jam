var _mat = instance_place(x,y,o_material)

if global.PLAYER.triggers.picked_material {
	if _mat != noone && place_meeting(x,y,_mat) && _mat.storage != noone {
		array_push(storage,_mat.storage)
		
		instance_destroy(_mat)
		
		global.PLAYER.triggers.picked_material = false
		global.PLAYER.cooking.clockwise_progress = 0
		global.PLAYER.cooking.unclockwise_progress = 0
	}
} else {
	if point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2,
		x + sprite_width/2, y + sprite_height/2) {
		pressed = true
		prev_mouse_angle = point_direction(x, y, mouse_x, mouse_y)
	}
}