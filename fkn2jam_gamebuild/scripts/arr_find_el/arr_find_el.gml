function arr_find_el(_arr,_name){
	for (var i = 0; i < array_length(_arr); i++) {
		if variable_struct_exists(_arr[i], "name") && _arr[i].name == _name {
			return _arr[i]
		}
	}
	
	return noone
}