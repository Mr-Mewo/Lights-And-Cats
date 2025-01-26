//draw_surface(application_surface, 0, 0)
//draw_clear(c_white)
//draw_clear_alpha(0, 0)

var lLightPosCaster = lightPosCaster
var lLightPosShadow = lightPosShadow
var lLightColor = lightColor
var lV_buff = v_buff

draw_set_color(c_black)
draw_set_alpha(0.75)
draw_rectangle(0, 0, room_width, room_height, 0)
draw_set_alpha(1)

gpu_set_blendmode(bm_add)
gpu_set_blendenable(true)

with(obj_lightBulb){
	//using shadow handler as a test
	//it is supposed to do everything related to shadows
	//
	//maybe do gpu_blen(add) and pixel.a /= 1.5
	//you know what that means
	surface_set_target(surface)
	
		shader_set(sh_shadowCaster)
			shader_set_uniform_f(lLightPosCaster, x, y)
			//creates altered matrix
			//var mat = matrix_build(0, sin(current_time/500)*10, 0, 0, 0, 0, 1, 1, 1);
			//applies matrix
			//matrix_set(matrix_world, mat);
			
			vertex_submit(lV_buff, pr_trianglelist, -1)
			//reset matrix
			//matrix_set(matrix_world, matrix_build_identity());
			
		shader_reset()
		
	surface_reset_target()
	
	shader_set(sh_shadow)
		shader_set_uniform_f(lLightPosShadow, x, y)
		shader_set_uniform_f_array(lLightColor, [red/255, green/255, blue/255])
		
		draw_surface(surface, 0, 0);
	shader_reset()
}
gpu_set_blendmode(bm_normal)

//shader_set(sh_shadow)
	//var pos = shader_get_uniform(sh_shadow, "pos")
	//shader_set_uniform_f(pos, obj_lightBulb.x, obj_lightBulb.y)
	
	//draw_surface(surface, 0, 0);

//shader_reset()

//draw_self()

