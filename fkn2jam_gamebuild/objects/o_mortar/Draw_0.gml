draw_self()

draw_text(x-64,y-64,$"{global.PLAYER.cooking.unclockwise_progress}")
draw_text(x+64,y-64,$"{global.PLAYER.cooking.clockwise_progress}")

for (var i = 0; i < array_length(storage); i++) {
	draw_sprite(storage[i].sprite,0,x-32,y-32)
}