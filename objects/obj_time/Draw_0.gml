draw_sprite_ext(sprite_index, image_index, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, 1)
draw_set_color(c_white)
draw_set_font(global.big_digits)
anim += 0.15
if (can_time == 1)
{
    draw_sprite(spr_cronometro_jump, anim, (__view_get( e__VW.XView, 0 ) + 99), (__view_get( e__VW.YView, 0 ) + 73))
    draw_text((__view_get( e__VW.XView, 0 ) + 100), (__view_get( e__VW.YView, 0 ) + 112), string_hash_to_newline(string_add_zeros(obj_levelmanager.leveltime, 3)))
}

