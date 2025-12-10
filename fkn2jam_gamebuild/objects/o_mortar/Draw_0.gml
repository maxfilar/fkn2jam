var _m = global.PLAYER.potions.mortar_list
var _len = array_length(_m)

if _len > 0 {
    var _positions = [
		[799,385],[994,384],[1183,384]
	]

    for (var i = 0; i < _len; i++) {
        _m[i].xpos = lerp(_m[i].xpos, _positions[i][0], 0.075)
        _m[i].ypos = lerp(_m[i].ypos, _positions[i][1], 0.075)
		
        draw_sprite(_m[i].sprite, 0, _m[i].xpos-64, _m[i].ypos-64)
    }
}

draw_self()
