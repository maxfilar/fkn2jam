function sc_inventory_count_empty(_arr){
	var _count = 0
	
	for (var i = 0; i < array_length(_arr); i++) {
		if _arr[i].storage == noone {
			_count ++
		}
	}
	
	return _count
}