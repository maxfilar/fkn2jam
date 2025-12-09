var _mat = instance_place(x,y,o_material)

if _mat != noone && place_meeting(x,y,_mat) {
	array_push(global.PLAYER.elixir.list,_mat.storage)
	instance_destroy(_mat)
	global.PLAYER.triggers.picked_material = false
}