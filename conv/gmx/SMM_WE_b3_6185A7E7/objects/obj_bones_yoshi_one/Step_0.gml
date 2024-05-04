if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 14)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    image_angle -= (6 * sign(hspeed))
else
    image_angle -= (12 * sign(hspeed))
if ((x < (__view_get( e__VW.XView, 0 ) - 32)) || ((x > ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) + 32)) || (y > ((__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )) + 32))))
    instance_destroy()

