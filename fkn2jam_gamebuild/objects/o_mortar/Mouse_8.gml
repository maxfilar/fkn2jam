if array_length(storage) > 0 {
	var _el = storage[ array_length(storage) - 1 ]
	var _mat = instance_create_layer(x,y,"Cursor",o_material)
	
	with _mat {
		storage = _el
		pinned = true
	}
	
	array_delete( storage, array_length(storage) - 1, 1)
}