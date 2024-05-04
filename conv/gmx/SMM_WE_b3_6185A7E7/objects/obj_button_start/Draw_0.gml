draw_self()
draw_set_font(global.time_digits_white)
draw_sprite_ext(spr_mario_lives, global.jugador, (__view_get( e__VW.XView, 0 ) + 10), (__view_get( e__VW.YView, 0 ) + 9), 1, 1, 0, c_white, 1)
draw_text((__view_get( e__VW.XView, 0 ) + 42), (__view_get( e__VW.YView, 0 ) + 16), string_hash_to_newline(string_add_zeros(lives, 2)))
if (room == rm_desafio_10_marios)
    draw_sprite(spr_des10marios, 0, (__view_get( e__VW.XView, 0 ) + 121), (__view_get( e__VW.YView, 0 ) + 72))
else if (room == rm_super_experto)
    draw_sprite(spr_super_experto, 0, (__view_get( e__VW.XView, 0 ) + 121), (__view_get( e__VW.YView, 0 ) + 101))

