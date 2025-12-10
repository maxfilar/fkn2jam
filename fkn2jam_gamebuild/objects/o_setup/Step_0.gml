if array_length(global.PLAYER.elixir.list) == array_length(global.PLAYER.elixir.recipe) {
	game_end()
}

var _recipe = []

for (var i = 0; i < array_length(global.PLAYER.elixir.recipe); i++) {
	array_push(_recipe,global.PLAYER.elixir.recipe[i].name)
}