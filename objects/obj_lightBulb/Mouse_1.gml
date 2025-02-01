relatedSliderMenu = instance_create_depth(x-50, y-50, depth-1, obj_slidesMenu)

relatedSliderMenu.red = [red, red/256 * 200/2 + x-40]
relatedSliderMenu.green = [green, green/256 * 200/2 + x-40]
relatedSliderMenu.blue = [blue, blue/256 * 200/2 + x-40]

isMenuUp = true