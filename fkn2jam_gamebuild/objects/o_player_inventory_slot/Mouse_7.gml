var _mat = instance_place(x,y,o_material)

if storage != noone && !global.PLAYER.triggers.picked_material {
	var _material = instance_create_layer(
		x,y,"Cursor",o_material
	)
	
	with _material {
		storage = other.storage
		pinned = true
	}
	
	global.PLAYER.triggers.picked_material = true
	storage = noone
} else if storage == noone && _mat != noone && place_meeting(x,y,_mat) && _mat.storage != noone {
	storage = _mat.storage
	instance_destroy(_mat)
	global.PLAYER.triggers.picked_material = false
}