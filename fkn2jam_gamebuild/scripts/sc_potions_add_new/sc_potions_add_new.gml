function sc_potions_add_new(_arr,_potion){
	for (var i = 0; i < array_length(_arr); i++) {
		if _arr[i].storage == noone {
			_arr[i].storage = _potion
			break
		}
	}
}