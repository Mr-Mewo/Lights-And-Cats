draw_set_font(Font12)
draw_set_color(c_black)

draw_text(0, 20, fps_real)
draw_text(0, 40, fps)
draw_text(0, 60, string(global.vertexAmmount * instance_number(obj_lightBulb)))

if keyboard_check(vk_escape){game_end()}
