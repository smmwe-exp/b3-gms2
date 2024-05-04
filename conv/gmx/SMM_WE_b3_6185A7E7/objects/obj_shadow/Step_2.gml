if surface_exists(s_surface)
{
    surface_set_target(s_surface)
    draw_clear_alpha(c_white, 0)
    if (global.apariencia == 0)
        fade = 0.3
    else if (global.apariencia == 1)
        fade = 0.5
    else
        fade = 0.25
    if instance_exists(obj_levelmanager)
    {
        if (obj_levelmanager.editor == 1)
            event_user(2)
        else
            event_user(1)
    }
    surface_reset_target()
}
else
{
    s_surface = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ))
    surface_set_target(s_surface)
    draw_clear_alpha(c_white, 0)
    surface_reset_target()
}

