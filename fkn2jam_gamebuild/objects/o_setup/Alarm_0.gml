var _m = global.MATERIALS

for (var i = 0; i < array_length(_m); i++) {
	_m[i].restore_sec_cur ++
	
	if _m[i].restore_sec_cur == _m[i].restore_sec_time {
		_m[i].restore_sec_cur = 0
		_m[i].restore_count ++
	}
}

alarm[0] = 60