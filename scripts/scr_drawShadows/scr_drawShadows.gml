function scr_drawShadows(obj){
	with obj{
		var pixel_position = []

		var siX = sprite_width/2
		var siY = sprite_height/2
		

		for (var i = 0; i < sprite_height/image_yscale; ++i) {
		    for (var j = 0; j < sprite_width/image_xscale; ++j) {
				pixel_position[j, i] = bool(collision_point(x -siX + i * image_xscale, 
													   y -siY + j * image_yscale, 
													   self, true, false))
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
				if pixel_position[i, j] == 1 {
					if i > 0 and i < xl-1 and j > 0 and j < yl-1{
						if pixel_position[i-1, j] == 0 {
							lines_register[array_length(lines_register)] = [[x+ssX-siX+j*sx-sx/2, y+ssY-siY+i*sy-sy/2], 
																			[x+ssX-siX+j*sx+sx/2, y+ssY-siY+i*sy-sy/2]]
							//side_register[array_length(lines_register)] = 0
						}
						if pixel_position[i+1, j] == 0{
							lines_register[array_length(lines_register)] = [[x+ssX-siX+j*sx-sx/2, y+ssY-siY+i*sy+sy/2], 
																			[x+ssX-siX+j*sx+sx/2, y+ssY-siY+i*sy+sy/2]]
							//side_register[array_length(lines_register)] = 1
						}
						if pixel_position[i, j-1] == 0{
							lines_register[array_length(lines_register)] = [[x+ssX-siX+j*sx-sx/2, y+ssY-siY+i*sy-sy/2], 
																			[x+ssX-siX+j*sx-sx/2, y+ssY-siY+i*sy+sy/2]]
							//side_register[array_length(lines_register)] = 2
						}
						if pixel_position[i, j+1] == 0{
							lines_register[array_length(lines_register)] = [[x+ssX-siX+j*sx+sx/2, y+ssY-siY+i*sy-sy/2], 
																			[x+ssX-siX+j*sx+sx/2, y+ssY-siY+i*sy+sy/2]]
							//side_register[array_length(lines_register)] = 3
						}
					}
				}
			}
		}
		
		
		for (var i = 0; i < array_length(lines_register); ++i) {
			var va = lines_register[i, 0]
			var vb = lines_register[i, 1]
			
			//var rCol = make_color_hsv(random(256), 256, 256)
			//draw_line_color(va[0], va[1], vb[0], vb[1], rCol, rCol)
			
			scr_drawShadows_line(va[0], va[1], vb[0], vb[1])
		}
	}
}