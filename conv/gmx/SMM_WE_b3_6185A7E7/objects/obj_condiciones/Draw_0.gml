draw_sprite_ext(sprite_index, image_index, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, 1)
if (can_draw == 1)
{
    if (global.condiciones_type == 0)
    {
        draw_sprite(spr_icons_condiciones_acciones, global.condiciones_count, (__view_get( e__VW.XView, 0 ) + 91), (__view_get( e__VW.YView, 0 ) + 120))
        draw_sprite(spr_text_condiciones_acciones, global.condiciones_count, (__view_get( e__VW.XView, 0 ) + 142), (__view_get( e__VW.YView, 0 ) + 101))
    }
}

