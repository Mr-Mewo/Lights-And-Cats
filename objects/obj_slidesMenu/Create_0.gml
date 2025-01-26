_b_width = 200
_b_height = 120
_b_out = 2
_l_height = 20
_l = 0
// IDK why -90 is nescessary though, it doesn't work properly without it ¯\_(ツ)_/¯


if !variable_instance_exists(self, "red") {
	red =      [255, x+_b_width-90]
	green =    [255, x+_b_width-90]
	blue =     [255, x+_b_width-90]
	strenght = [255, x+_b_width-90]
}
