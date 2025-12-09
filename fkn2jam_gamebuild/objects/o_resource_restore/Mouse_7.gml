if storage.restore_count > 0 && !global.PLAYER.triggers.picked_material {
	var _m = instance_create_layer(
		x,y,"Cursor",o_material
	)
	
	with _m {
		storage = struct_deep_copy(other.storage)
		pinned = true
		storage.count = 1
	}
	
	storage.restore_count --
	
	global.PLAYER.triggers.picked_material = true
}