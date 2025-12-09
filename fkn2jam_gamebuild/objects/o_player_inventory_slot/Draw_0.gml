draw_self()

if storage != noone {
	draw_sprite(storage.sprite,0,x,y)
	if storage.count > 1 {
		draw_text(x+48,y+42,$"{storage.count}")
	}
}