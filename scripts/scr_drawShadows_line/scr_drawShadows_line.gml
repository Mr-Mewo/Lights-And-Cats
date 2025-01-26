global.vertexAmmount = 0

function scr_drawShadows_line(xa, ya, xb, yb){
	//puts stuff on the vertex buffer
	
	//with(obj_lightBulb){
		var c = c_black
		var ca = make_color_rgb(1, 0, 0)
		var a = 1
		var buffer = obj_lightController.v_buff
		//triangle 1
		vertex_position_3d(buffer, xa, ya, 1)
		//vertex_colour(buffer, c, a)
	
		vertex_position_3d(buffer, xb, yb, 1)
		//vertex_colour(buffer, c, a)
	
		vertex_position_3d(buffer, xa, ya, 0)
		//vertex_colour(buffer, ca, a)
		//triangle 2
		vertex_position_3d(buffer, xb, yb, 1)
		//vertex_colour(buffer, c, a)
	
		vertex_position_3d(buffer, xb, yb, 0)
		//vertex_colour(buffer, ca, a)
	
		vertex_position_3d(buffer, xa, ya, 0)
		//vertex_colour(buffer, ca, a)
		
		global.vertexAmmount += 6
	//}
}