event_user(0)
if (!surface_exists(surf))
    surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ))
else
{
    surface_set_target(surf)
    draw_clear((c_white - surf_colour))
    draw_set_blend_mode(3)
    draw_circle_colour_precise((x - __view_get( e__VW.XView, 0 )), (y - __view_get( e__VW.YView, 0 )), scale, 16777215, 16777215, 0, 64)
    draw_set_blend_mode(0)
    surface_reset_target()
}

