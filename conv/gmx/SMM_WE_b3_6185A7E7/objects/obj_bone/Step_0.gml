if instance_exists(obj_mario_transform2)
    depth = -5
else
    depth = -7
if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 14)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    image_angle -= (4 * sign(hspeed))
else
    image_angle -= (8 * sign(hspeed))
if outside_view()
    instance_destroy()

