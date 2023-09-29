/// @description Second tile flipped


if (flipped_1 != 0 and flipped_2 != 0) {
	if (flipped_1.sprite_index == flipped_2.sprite_index) {
		flipped_1.done = true
		flipped_2.done = true
		flipped_1 = 0
		flipped_2 = 0
		
		num_done += 1
		if (num_done == 8) {
			event_user(1)	
		}
	} else {
		alarm_set(0, room_speed * 2)
	}
}
