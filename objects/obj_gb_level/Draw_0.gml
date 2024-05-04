draw_self()
if (global.idioma == 0)
{
    stamps = spr_stamps
    etiquetas_g = spr_etiquetas_guardabot
}
else if (global.idioma == 1)
{
    stamps = spr_stamps_english
    etiquetas_g = spr_etiquetas_guardabot_english
}
draw_set_font(global.font_white)
draw_text((__view_get( e__VW.XView, 0 ) + 67), (__view_get( e__VW.YView, 0 ) + 58), string_hash_to_newline(global.levelguardabot))
draw_set_font(global.font)
draw_text((__view_get( e__VW.XView, 0 ) + 72), (__view_get( e__VW.YView, 0 ) + 79), string_hash_to_newline(user))
if (global.etiqueta1_temp == -1)
{
    draw_sprite(etiquetas_g, 9, (__view_get( e__VW.XView, 0 ) + 209), (__view_get( e__VW.YView, 0 ) + 141))
    draw_sprite(stamps, global.etiqueta2_temp, (__view_get( e__VW.XView, 0 ) + 58), (__view_get( e__VW.YView, 0 ) + 90))
}
else
{
    draw_sprite(etiquetas_g, global.etiqueta1_temp, (__view_get( e__VW.XView, 0 ) + 209), (__view_get( e__VW.YView, 0 ) + 141))
    draw_sprite(stamps, global.etiqueta1_temp, (__view_get( e__VW.XView, 0 ) + 58), (__view_get( e__VW.YView, 0 ) + 90))
}
if (global.etiqueta2_temp == -1)
    draw_sprite(etiquetas_g, 9, (__view_get( e__VW.XView, 0 ) + 209), (__view_get( e__VW.YView, 0 ) + 153))
else
    draw_sprite(etiquetas_g, global.etiqueta2_temp, (__view_get( e__VW.XView, 0 ) + 209), (__view_get( e__VW.YView, 0 ) + 153))
draw_sprite(spr_condiciones_guardabot, global.condiciones, (__view_get( e__VW.XView, 0 ) + 209), (__view_get( e__VW.YView, 0 ) + 129))
draw_sprite(spr_carteles, global.apariencia, (__view_get( e__VW.XView, 0 ) + 285), (__view_get( e__VW.YView, 0 ) + 93))
draw_sprite(spr_cards_entorno, entorno_image, (__view_get( e__VW.XView, 0 ) + 287), (__view_get( e__VW.YView, 0 ) + 120))
if (global.idioma == 0)
    draw_sprite(spr_button_multiplayer_guardabot, 0, (__view_get( e__VW.XView, 0 ) + 61), (__view_get( e__VW.YView, 0 ) + 182))
else if (global.idioma == 1)
    draw_sprite(spr_button_multiplayer_guardabot_en, 0, (__view_get( e__VW.XView, 0 ) + 61), (__view_get( e__VW.YView, 0 ) + 182))
draw_sprite(spr_date_time_bg, 0, (__view_get( e__VW.XView, 0 ) + 58), (__view_get( e__VW.YView, 0 ) + 153))
draw_set_font(global.numbers_datetime)
draw_text((__view_get( e__VW.XView, 0 ) + 61), (__view_get( e__VW.YView, 0 ) + 157), string_hash_to_newline(fecha))
draw_text((__view_get( e__VW.XView, 0 ) + 166), (__view_get( e__VW.YView, 0 ) + 157), string_hash_to_newline(hora))

