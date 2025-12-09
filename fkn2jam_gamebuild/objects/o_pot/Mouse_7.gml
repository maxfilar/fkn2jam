var _mat = instance_place(x,y,o_material)

if _mat != noone && place_meeting(x,y,_mat) {
	var _e = global.PLAYER.elixir.recipe
	
	for (var i = 0 ; i < array_length(_e); i++) {
		if _mat.storage.name == _e[i].name {
			array_push(global.PLAYER.elixir.list,_mat.storage)
			instance_destroy(_mat)
			global.PLAYER.triggers.picked_material = false
			break
		}
	}
}