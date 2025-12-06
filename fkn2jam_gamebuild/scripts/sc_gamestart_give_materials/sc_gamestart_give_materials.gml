function sc_gamestart_give_materials(_arr, _count = 3){
	var _materials = arr_duplicate( global.MATERIALS )
	
	repeat (_count) {
		var _rand_material = irandom( array_length( _materials ) - 1 ) 
		
		sc_inventory_add_item( _arr, _materials[_rand_material] )
		
		array_delete(_materials, _rand_material, 1)
	}
}