
var b_width = _b_height,
	b_height = _b_height,
	b_out = _b_out,
	l_height = _l_height,
	l = _l

if !point_in_rectangle(mouse_x, mouse_y, x, y, x+b_width, y+b_height){
	instance_destroy()
}

draw_roundrect_color_ext(x, y, x+b_width, y+b_height, 10, 10, c_white, c_white, 0)
draw_roundrect_color_ext(x+b_out, y+b_out, x-b_out+b_width, y-b_out+b_height, 10, 10, c_black, c_black, 0)

l = 0
draw_line_width_color(x+9, y+10+l_height*l, x+b_width-9,  y+10+l_height*l, 5, c_white, c_white)
draw_line_width_color(x+10, y+10+l_height*l, x+b_width-10,  y+10+l_height*l, 3, c_black, c_red)
red = scr_slider(x+10, x+b_width-10, y+10+l_height*l, red[1])

l = 1
draw_line_width_color(x+9, y+10+l_height*l, x+b_width-9,  y+10+l_height*l, 5, c_white, c_white)
draw_line_width_color(x+10, y+10+l_height*l, x+b_width-10,  y+10+l_height*l, 3, c_black, c_green)
green = scr_slider(x+10, x+b_width-10, y+10+l_height*l, green[1])

l = 2
draw_line_width_color(x+9, y+10+l_height*l, x+b_width-9,  y+10+l_height*l, 5, c_white, c_white)
draw_line_width_color(x+10, y+10+l_height*l, x+b_width-10,  y+10+l_height*l, 3, c_black, c_blue)
blue = scr_slider(x+10, x+b_width-10, y+10+l_height*l, blue[1])

//l = 3
//draw_text_color(x+10, y+10+l_height*l, "light strength", c_white, c_white, c_white, c_white, 1)
//
//l = 4
//draw_line_width_color(x+9, y+10+l_height*l, x+b_width-9,  y+10+l_height*l, 5, c_white, c_white)
//draw_line_width_color(x+10, y+10+l_height*l, x+b_width-10,  y+10+l_height*l, 3, c_black, c_white)
//strenght = scr_slider(x+10, x+b_width-10, y+10+l_height*l, strenght[1])

l = 3
draw_set_color(make_color_rgb(red[0], green[0], blue[0]))
draw_line_width(x+10, y+5+l_height*l, x+b_width-10,  y+5+l_height*l, 10)
//
//l = 4
//draw_set_color(c_white)
//draw_text(x+10, y+5+l_height*l, string(red) + " - " + string(green) + " - " + string(blue) + " - ")
//