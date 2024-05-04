draw_sprite(sprite_index, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
if (global.bg_level == "forest")
{
    if (global.idioma == 0)
        draw_sprite(spr_minitabs, 1, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
    else if (global.idioma == 1)
        draw_sprite(spr_minitabs_english, 1, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
}
else if (global.idioma == 0)
    draw_sprite(spr_minitabs, 2, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
else if (global.idioma == 1)
    draw_sprite(spr_minitabs_english, 2, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))

