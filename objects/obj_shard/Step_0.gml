if outside_view()
{
    instance_destroy()
    exit
}
if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
{
    if (dir == 0)
        image_angle += 5
    else
        image_angle -= 5
    gravity = 0.1
    hspeed = (0.5 * sign(hspeed))
}
else
{
    if (dir == 0)
        image_angle += 10
    else
        image_angle -= 10
    gravity = 0.2
    hspeed = (1 * sign(hspeed))
}

