function scr_slider(xBegin, xEnd, _y, val){
	var _x = clamp(mouse_x, xBegin, xEnd),
		_w = xEnd-xBegin,
		_mX = val
	
	if point_in_circle(mouse_x, mouse_y, _x, _y, 6) and 
	   mouse_check_button(mb_left){
		_mX = _x
	}
	
	
	var get_val = (_mX-xBegin)/_w*255



	draw_set_color(c_gray)
	draw_circle(_mX, _y, 4, 0)
	
	return [get_val, _mX]
}
