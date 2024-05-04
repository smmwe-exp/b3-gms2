if background_exists(back)
{
    draw_enable_alphablend(0)
    draw_background(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
    draw_enable_alphablend(1)
}
draw_self()
draw_set_font(global.font_white)
draw_text((__view_get( e__VW.XView, 0 ) + 30), (__view_get( e__VW.YView, 0 ) + 45), string_hash_to_newline(global.levelguardabot))
if (global.etiqueta1_temp == -1)
    draw_sprite(spr_etiquetas_pausa, 9, (__view_get( e__VW.XView, 0 ) + 24), (__view_get( e__VW.YView, 0 ) + 100))
else
    draw_sprite(spr_etiquetas_pausa, global.etiqueta1_temp, (__view_get( e__VW.XView, 0 ) + 24), (__view_get( e__VW.YView, 0 ) + 100))
if (global.etiqueta2_temp == -1)
    draw_sprite(spr_etiquetas_pausa, 9, (__view_get( e__VW.XView, 0 ) + 24), (__view_get( e__VW.YView, 0 ) + 111))
else
    draw_sprite(spr_etiquetas_pausa, global.etiqueta2_temp, (__view_get( e__VW.XView, 0 ) + 24), (__view_get( e__VW.YView, 0 ) + 111))

