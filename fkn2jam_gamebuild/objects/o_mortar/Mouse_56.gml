pressed = false
var _m = global.PLAYER.potions.mortar_list

if time_after_click == 0 {
    var _len = array_length(_m)

    if _len == 0 exit

    var _mx = device_mouse_x(0)
    var _my = device_mouse_y(0)

    var picked_index = -1
    var hit = 28

    for (var i = 0; i < _len; i++) {
        if (is_struct(_m[i]) && variable_struct_exists(_m[i], "xpos")) {
            if (point_distance(_mx, _my, _m[i].xpos, _m[i].ypos) <= hit) {
                picked_index = i
                break
            }
        }
    }
    if (picked_index == -1) exit

    if (!is_struct(_m[picked_index])) exit

    var _el = _m[picked_index]
    var _mat = instance_create_layer(_el.xpos, _el.ypos, "Cursor", o_material)
    with (_mat) {
        storage = _el
        pinned = true
    }
    array_delete(_m, picked_index, 1)

    global.PLAYER.triggers.picked_material = true
}
