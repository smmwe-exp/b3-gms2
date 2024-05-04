if (!surface_exists(surf))
    surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ))
else if (view_current == 0)
    draw_surface(surf, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))

