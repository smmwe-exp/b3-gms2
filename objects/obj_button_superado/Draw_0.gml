draw_self()
if (effect_hover == 1)
    draw_sprite(spr_button_pausa_select, 0, x, y)
draw_text((__view_get( e__VW.XView, 0 ) + 10), (__view_get( e__VW.YView, 0 ) + 55), string_hash_to_newline(global.levelguardabot))

