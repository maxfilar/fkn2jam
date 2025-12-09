function sc_inventory_add_item(_arr,_item){
	for (var i = 0; i < array_length(_arr); i++) {
		if _arr[i].storage == noone {
			_arr[i].storage = _item
			break
		}
		
		if variable_struct_exists(_arr[i].storage, "count") && _arr[i].storage.name == _item.name {
			_item.count += 1
			break
		}
	}
}