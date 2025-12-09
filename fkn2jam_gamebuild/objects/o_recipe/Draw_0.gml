draw_self()

if storage != noone {
	draw_sprite(storage.sprite,0,x+8,y+8)
	
	for (var i = 0; i < array_length(storage.recipe); i++) {
		draw_sprite_ext(
			storage.recipe[i].sprite,
			0,
			x + 4 + i * 24,
			y + 72,
			0.5,
			0.5,
			0,
			c_white,
			1
		)
	}
	
	draw_set_halign(fa_center)
	draw_text(x+42,y+96,$"{storage.name}")
}