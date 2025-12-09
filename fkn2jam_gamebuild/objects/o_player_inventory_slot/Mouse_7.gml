var _mat = instance_place(x,y,o_material)

if storage != noone && !global.PLAYER.triggers.picked_material {
	var _material = instance_create_layer(
		x,y,"Cursor",o_material
	)
	
	with _material {
		storage = struct_deep_copy(other.storage)
		storage.count = 1
		pinned = true
	}
	storage.count --
	
	global.PLAYER.triggers.picked_material = true
	if storage.count == 0 {
		storage = noone
	}
} else if _mat != noone && _mat.storage != noone &&  (storage == noone || storage.name == _mat.storage.name) && place_meeting(x,y,_mat) {
	if storage == noone {
		storage = _mat.storage
	} else if storage.name == _mat.storage.name {
		storage.count ++
	}
	global.PLAYER.triggers.picked_material = false
	instance_destroy(_mat)
}