function struct_deep_copy(_v) {

    if (is_struct(_v)) {
        var _new = {}
        var _keys = variable_struct_get_names(_v)

        for (var i = 0; i < array_length(_keys); i++) {
            var k = _keys[i]
            var val = variable_struct_get(_v, k)
            _new[$ k] = struct_deep_copy(val)
        }

        return _new
    }

    if (is_array(_v)) {
        var _new_arr = array_create(array_length(_v))

        for (var i = 0; i < array_length(_v); i++) {
            _new_arr[i] = struct_deep_copy(_v[i])
        }

        return _new_arr
    }

    return _v
}
