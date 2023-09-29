/// @description Insert description here
// You can write your code in this editor

var _instance = id;

with(obj_game_logic) {
	if (flipped_1 != _instance and flipped_2 != _instance) {
		if (!flipped_1) {
			flipped_1 = _instance
		} else if (!flipped_2) {
			flipped_2 = _instance
			event_user(0)
		} else {
			alarm_set(0, -1)
			flipped_1 = _instance
			flipped_2 = 0
		}
	}
}

