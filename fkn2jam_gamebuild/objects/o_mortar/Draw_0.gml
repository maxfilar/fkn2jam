var _m = global.PLAYER.potions.mortar_list
var _len = array_length(_m)

if _len > 0 {
    var radius = 156
    var angle_step = 360 / _len

    for (var i = 0; i < _len; i++) {
        var ang = i * angle_step

        var dx = x + lengthdir_x(radius, ang)
        var dy = y + lengthdir_y(radius, ang)

        _m[i].xpos = lerp(_m[i].xpos, dx, 0.05)
        _m[i].ypos = lerp(_m[i].ypos, dy, 0.05)
		
		draw_sprite(s_mortar_element, 0, _m[i].xpos, _m[i].ypos)
        draw_sprite(_m[i].sprite, 0, _m[i].xpos-32, _m[i].ypos-32)
    }
}

draw_self()
