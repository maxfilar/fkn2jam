function sc_inventory_add_item(_arr,_item){
	for (var i = 0; i < array_length(_arr); i++) {
		if _arr[i].storage == noone {
			_arr[i].storage = _item
			break
		}
	}
}