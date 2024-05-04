draw_sprite(spr_DSM_grid, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
if (ready == 1)
{
    if (world == 1)
    {
        draw_sprite(spr_DSM_castle_peach, castle_pech, (__view_get( e__VW.XView, 0 ) + 18), (__view_get( e__VW.YView, 0 ) + 89))
        draw_sprite(spr_DSM_castle_small, 0, (__view_get( e__VW.XView, 0 ) + 322), (__view_get( e__VW.YView, 0 ) + 138))
    }
    else if (world == 4)
        draw_sprite(spr_DSM_castle_peach, castle_pech, (__view_get( e__VW.XView, 0 ) + 18), (__view_get( e__VW.YView, 0 ) + 89))
    else
        draw_sprite(spr_DSM_castle_small, 0, (__view_get( e__VW.XView, 0 ) + 322), (__view_get( e__VW.YView, 0 ) + 138))
    draw_sprite(spr_DSM_levels, (world - 1), __view_get( e__VW.XView, 0 ), (__view_get( e__VW.YView, 0 ) + 166))
    draw_sprite(spr_DSM_flower, flower, (__view_get( e__VW.XView, 0 ) + 16), (__view_get( e__VW.YView, 0 ) + 180))
    draw_sprite(spr_DSM_flower, flower, (__view_get( e__VW.XView, 0 ) + 121), (__view_get( e__VW.YView, 0 ) + 142))
    draw_sprite(spr_DSM_flower, flower, (__view_get( e__VW.XView, 0 ) + 262), (__view_get( e__VW.YView, 0 ) + 191))
    draw_sprite(spr_DSM_flower, flower, (__view_get( e__VW.XView, 0 ) + 348), (__view_get( e__VW.YView, 0 ) + 183))
}
if (ready2 == 1)
    draw_sprite(spr_DSM_nubes, anim_nubes, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
else if (ready2 == 2)
    draw_sprite(spr_DSM_nubes, 7, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))

