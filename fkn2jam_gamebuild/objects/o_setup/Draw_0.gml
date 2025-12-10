switch room {
	case r_potion_cooking:
		var _e = global.PLAYER.elixir.recipe
	
		for (var i = 0 ; i < array_length(_e); i++) {
			if _e[i].collected {
				draw_set_alpha(1)
			} else {
				draw_set_alpha(0.5)
			}
			draw_sprite(_e[i].sprite,0, room_width*0.335 + i * 140,room_height*0.1)
		}
	break
}

draw_set_alpha(1)