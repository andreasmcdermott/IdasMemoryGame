/// @description Create the board

num_done = 0
can_restart = false

var _x = 0, _y = 0;
var _sprites = [Tile_01, Tile_02, Tile_03, Tile_04, Tile_05, Tile_06, Tile_07, Tile_08];
var _gap = 8;
var _smaller_size = min(room_width, room_height);
var _size = (_smaller_size - 5 * _gap) / 4;
var _full_size = _size * 4 + _gap * 3;
var _ox = (room_width - _full_size) / 2;
var _oy = (room_height - _full_size) / 2;


// Randomize

randomize();

var _all_variations = [];
var _variation = 0;

for(var i = 0; i < 16; i+=1) {
  _all_variations[i] = -1;	
}

repeat(8) {
	repeat(2) {
		var placed = false;
		while(!placed) {
			var pos = round(random(15));
			if (_all_variations[pos] == -1) {
				_all_variations[pos] = _variation;	
				placed = true;
			}
		}
	}
	
  _variation += 1;
}

// Create tiles


while(array_length(_all_variations) > 0) {
	_variation = array_pop(_all_variations);
	
	var _instance = instance_create_layer(
		_ox + _x * (_size + _gap), 
		_oy + _y * (_size + _gap), 
		"instances", obj_tile
	);
		
	with(_instance) {
		_instance.sprite_index = _sprites[_variation];
		_instance.image_xscale = _size / _instance.sprite_width;
		_instance.image_yscale = _size / _instance.sprite_height;
	}
		
	_x += 1;
		
	if (_x >= 4) {
		_y += 1;
		_x = 0;
	}
}