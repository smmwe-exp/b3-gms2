draw_sprite_ext(sprite_index, image_index, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, 1)
if (dibujar_texto == 1)
{
    draw_set_font(global.font)
    draw_text((__view_get( e__VW.XView, 0 ) + 10), (__view_get( e__VW.YView, 0 ) + 58), string_hash_to_newline(global.levelguardabot))
    if (new_record == 1)
        draw_sprite(spr_new_record, global.idioma, (__view_get( e__VW.XView, 0 ) + 253), (__view_get( e__VW.YView, 0 ) + 82))
    draw_set_font(global.numbers_points)
    draw_text((__view_get( e__VW.XView, 0 ) + 167), (__view_get( e__VW.YView, 0 ) + 109), string_hash_to_newline(tiempo_record))
    draw_text((__view_get( e__VW.XView, 0 ) + 281), (__view_get( e__VW.YView, 0 ) + 109), string_hash_to_newline(tiempo))
}

