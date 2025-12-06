sprite_index = storage.sprite

if pinned {
	x = mouse_x - sprite_width / 2
	y = mouse_y - sprite_height / 2
}

if time_after_click > 0 time_after_click --