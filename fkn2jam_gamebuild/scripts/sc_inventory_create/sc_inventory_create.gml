function sc_inventory_create(_struct){
	for (var i = 0; i < _struct.size; i++) {
		_x = _struct.xpos
		_y = _struct.ypos
		_diff = 96
		
		var _slot = instance_create_layer(
			_x + i * _diff,
			_y,
			"GUI",
			_struct.object
		)
		
		with _slot {
			array_push(_struct.list, self)
		}
	}
}