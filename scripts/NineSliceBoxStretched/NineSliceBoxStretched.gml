// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NineSliceBoxStretched(sprite,x1,y1,x2,y2,index){
///@param {sprite}	sprite	The sprite used to make the text boxes
///@param {position}	x1		The left position of the text box
///@param {position}	y1		The top position of the text box
///@param {position}	x2		The right position of the text box
///@param {position}	y2		The bottom position of the text box
///@param {real}		index	The image index of the sprite used

var _size = sprite_get_width(sprite) / 3;
var _x1 = x1;
var _y1 = y1;
var _x2 = x2;
var _y2 = y2;
var _index = index;
var _w = _x2 - _x1;
var _h = _y2 - _y1

//MIDDLE
draw_sprite_part_ext(sprite, _index, _size, _size, 1, 1, _x1 + _size,_y1 + _size, _w - (_size * 2), _h - (_size * 2), c_white,draw_get_alpha());

//CORNERS
//TOP LEFT
draw_sprite_part(sprite, _index, 0, 0, _size, _size, _x1, _y1);
//TOP RIGHT
draw_sprite_part(sprite, _index, _size * 2, 0, _size, _size, _x1 + _w - _size, _y1);
//BOTTOM LEFT
draw_sprite_part(sprite, _index, 0, _size * 2, _size, _size, _x1, _y1 + _h - _size);
//BOTTOM RIGHT
draw_sprite_part(sprite, _index, _size * 2, _size * 2, _size, _size, _x1 + _w - _size, _y1 + _h - _size);

//EDGES
//LEFT
draw_sprite_part_ext(sprite, _index, 0, _size, _size, 1, _x1, _y1 + _size, 1, _h - (_size * 2), c_white, draw_get_alpha());
//RIGHT
draw_sprite_part_ext(sprite, _index, _size * 2, _size, _size, 1, _x1 + _w - _size, _y1 + _size, 1, _h - (_size * 2), c_white, draw_get_alpha());
//TOP
draw_sprite_part_ext(sprite, _index, _size, 0, 1, _size, _x1 + _size, _y1, _w - (_size * 2), 1, c_white, draw_get_alpha());
//BOTTOM
draw_sprite_part_ext(sprite, _index, _size, _size * 2, 1, _size, _x1 + _size, _y1 + _h - (_size), _w - (_size * 2), 1, c_white,draw_get_alpha());
}