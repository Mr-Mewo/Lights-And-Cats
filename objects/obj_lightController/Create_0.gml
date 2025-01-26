depth = 0

surface = surface_create(window_get_width(), window_get_height())

vertex_format_begin()

vertex_format_add_position_3d()
//vertex_format_add_color()

my_format = vertex_format_end()


v_buff = vertex_create_buffer()
vertex_begin(v_buff, my_format)

scr_drawShadows(obj_block)
scr_drawShadows(obj_mewo)
scr_drawShadows(obj_mewoTeste)
scr_drawShadows(obj_waiting)
//scr_drawShadows_sprite(obj_waiting)
//scr_drawShadows_line(room_width/2-50, room_height/2-25, room_width/2+50, room_height/2+25)
//scr_draw4SideShape(100, 100, 200, 0, 150, 200, 200, 200, false)


vertex_end(v_buff)
vertex_freeze(v_buff)
//vertex_delete_buffer(v_buff)

lightPosCaster = shader_get_uniform(sh_shadowCaster, "pos")
lightPosShadow = shader_get_uniform(sh_shadow, "pos")
lightColor = shader_get_uniform(sh_shadow, "col")