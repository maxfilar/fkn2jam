switch room {
	case r_elixir_cooking:
		var _e = global.PLAYER.elixir.recipe
	
		for (var i = 0 ; i < array_length(_e); i++) {
			draw_set_halign(fa_center)
			draw_text(room_width/2,room_height*0.05,"Potions you need for elixir:")
			draw_sprite(_e[i].sprite,0, room_width*0.3 + i * 64,room_height*0.1)
		}
	break
}