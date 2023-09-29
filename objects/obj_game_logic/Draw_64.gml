/// @description Draw win screen


if (num_done == 8) {
	var _w = room_width / 8
	var _h = room_height / 8

	draw_set_alpha(0.5)
	draw_rectangle_color(_w*3 + 4, _h*3 + 4, _w * 5 + 4, _h * 5 + 4, c_black, c_black, c_black, c_black, false)
	draw_set_alpha(1)
	draw_rectangle_color(_w*3, _h*3, _w * 5, _h * 5, c_white, c_white, c_white, c_white, false)
	draw_set_font(Font_01)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_text_color(_w * 4 + 1, _h * 3 + _h / 2 + 1, "You Win!", c_black, c_black, c_black, c_black, 1)	
	draw_text_color(_w * 4, _h * 3 + _h / 2, "You Win!", c_purple, c_fuchsia, c_purple, c_aqua, 1)	
	

	if (can_restart) {
		draw_set_alpha(0.5);
		draw_rectangle_color(_w * 4 - 100 + 1, _h * 4 + _h / 4 + 1, _w * 4 + 100 + 1, _h * 5 - _h / 4 + 1, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		draw_rectangle_color(_w * 4 - 100, _h * 4 + _h / 4, _w * 4 + 100, _h * 5 - _h / 4, c_purple, c_fuchsia, c_purple, c_aqua, false);
	
		draw_text_color(_w * 4 + 1, _h * 5 - _h / 2 + 1, "Play Again", c_black, c_black, c_black, c_black, 1);
		draw_text_color(_w * 4, _h * 5 - _h / 2, "Play Again", c_white, c_white, c_white, c_white, 1);
	}
}