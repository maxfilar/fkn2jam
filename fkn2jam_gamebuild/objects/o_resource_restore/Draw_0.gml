draw_self()

if storage.restore_count > 0 {
	draw_text(x+72,y+72,$"{storage.restore_count}")
	image_alpha = 1
} else {
	image_alpha = 0.5
}