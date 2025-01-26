depth = 1

/*var pixel_position = []

var siX = sprite_width/2
var siY = sprite_height/2

for (var i = 0; i < sprite_height/image_yscale; ++i) {
    for (var j = 0; j < sprite_width/image_xscale; ++j) {
		if collision_point(x -siX + i * image_xscale, 
						   y -siY + j * image_yscale, self, true, false){
			pixel_position[j, i] = 1
		}else{
			pixel_position[j, i] = 0
		}
	}
}

var xl = array_length(pixel_position[0])
var yl = array_length(pixel_position[1])
lines_register = []
side_register = []
var sx = image_xscale
var sy = image_yscale

var ssX = image_xscale/2
var ssY = image_yscale/2

for (var i = 0; i < xl; ++i) {
	for (var j = 0; j < yl; ++j) {
		if pixel_position[i, j] == 1{
			if pixel_position[i-1, j] == 0 { // or !variable_instance_exists(id, pixel_position[i-1, j])
				lines_register[array_length(lines_register)] = [[x+ssX-siX+j*sx-sx/2, y+ssY-siY+i*sy-sy/2], [x+ssX-siX+j*sx+sx/2, y+ssY-siY+i*sy-sy/2]]
				side_register[array_length(lines_register)] = 0
			}							   //					  +ssX				  +ssY					+ss	X				+ss	  Y
			if pixel_position[i+1, j] == 0{//					  +ssX				  +ssY					+ss	X				+ss	  Y
				lines_register[array_length(lines_register)] = [[x+ssX-siX+j*sx-sx/2, y+ssY-siY+i*sy+sy/2], [x+ssX-siX+j*sx+sx/2, y+ssY-siY+i*sy+sy/2]]
				side_register[array_length(lines_register)] = 1
			}							   //					  +ssX				  +ssY					+ss	X				+ss	  Y
			if pixel_position[i, j-1] == 0{//					  +ssX				  +ssY					+ss	X				+ss	  Y
				lines_register[array_length(lines_register)] = [[x+ssX-siX+j*sx-sx/2, y+ssY-siY+i*sy-sy/2], [x+ssX-siX+j*sx-sx/2, y+ssY-siY+i*sy+sy/2]]
				side_register[array_length(lines_register)] = 2
			}							   //					  +ssX				  +ssY					+ss	X				+ss	  Y
			if pixel_position[i, j+1] == 0{//					  +ssX				  +ssY					+ss	X				+ss	  Y
				lines_register[array_length(lines_register)] = [[x+ssX-siX+j*sx+sx/2, y+ssY-siY+i*sy-sy/2], [x+ssX-siX+j*sx+sx/2, y+ssY-siY+i*sy+sy/2]]
				side_register[array_length(lines_register)] = 3
			}
		}
	}
}*/