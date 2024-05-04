draw_sprite(spr_mariostart, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
draw_set_font(global.numbers_start)
draw_text((__view_get( e__VW.XView, 0 ) + 346), (__view_get( e__VW.YView, 0 ) + 74), string_hash_to_newline(texto))
if (global.levelguardabot != "")
{
    draw_set_font(global.font)
    distancia = ((384 - string_width(string_hash_to_newline(global.levelguardabot))) / 2)
    draw_text((__view_get( e__VW.XView, 0 ) + distancia), (__view_get( e__VW.YView, 0 ) + 28), string_hash_to_newline(global.levelguardabot))
}
if (global.condiciones == 1)
{
    if (global.condiciones_type == 0)
    {
        if (global.condiciones_count == 0)
            draw_sprite(spr_conidiones_alert_acciones2, 0, (__view_get( e__VW.XView, 0 ) + 54), (__view_get( e__VW.YView, 0 ) + 150))
        else
            draw_sprite(spr_conidiones_alert_acciones, 0, (__view_get( e__VW.XView, 0 ) + 54), (__view_get( e__VW.YView, 0 ) + 150))
    }
}

