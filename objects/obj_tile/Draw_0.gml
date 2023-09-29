/// @description Insert description here
// You can write your code in this editor

var _sprite
var _is_flipped = false
var _instance = id

with(obj_game_logic) {
	_is_flipped = (flipped_1 == _instance or flipped_2 == _instance)
}

if (_is_flipped == true or done == true) {
	_sprite = sprite_index;
} else {
	_sprite = Tile_00
}

draw_sprite_ext(_sprite, 0, x, y, image_xscale, image_yscale, 0, c_white, 1)