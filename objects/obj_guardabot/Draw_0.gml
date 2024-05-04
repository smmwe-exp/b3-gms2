if (can_anim == 1)
    anim += 0.3
draw_sprite(spr_guardabot_head, anim, (__view_get( e__VW.XView, 0 ) + 94), __view_get( e__VW.YView, 0 ))
if (global.idioma == 0)
    draw_sprite(spr_guardabot_tabs, 0, (__view_get( e__VW.XView, 0 ) + 48), (__view_get( e__VW.YView, 0 ) + 30))
else if (global.idioma == 1)
    draw_sprite(spr_guardabot_tab_english, 0, (__view_get( e__VW.XView, 0 ) + 48), (__view_get( e__VW.YView, 0 ) + 30))

