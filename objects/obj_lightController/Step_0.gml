if mouse_check_button_pressed(mb_middle) {
	var selected = collision_point(mouse_x, mouse_y, obj_lightBulb, false, true)
	
	if selected != noone {
		instance_destroy(selected)
	}else{
		instance_create_layer(mouse_x, mouse_y, "Controll", obj_lightBulb)
	}
}