draw_self()

if storage != noone {
	draw_sprite(storage.sprite,0,x,y)
	draw_set_halign(fa_left)
	if storage.count > 1 {
		draw_set_font(f_main_32px)
		draw_set_colour(c_black)
		draw_text(x+84,y+76,$"{storage.count}")
	}
}