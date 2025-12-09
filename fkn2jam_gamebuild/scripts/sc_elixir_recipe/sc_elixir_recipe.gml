// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_elixir_recipe(_struct,_count){
	var _potions = arr_duplicate(global.POTIONS)
	
	for (var i = 0; i < _count; i++) {
		var _rand_potion = irandom(array_length(_potions) - 1)
		
		array_push(_struct.elixir.recipe,_potions[_rand_potion])
		
		array_delete(_potions,_rand_potion,1)
	}
}