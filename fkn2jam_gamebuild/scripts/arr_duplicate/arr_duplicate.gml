function arr_duplicate(_arr){
	var _new_arr = []
	
	for (var i = 0; i < array_length(_arr); i++) {
		array_push(_new_arr, _arr[i])
	}
	
	return _new_arr
}