if (hspeed == 0)
{
    if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
    {
        if (direct == 1)
            hspeed = 0.3
        else
            hspeed = -0.3
    }
    else if (direct == 1)
        hspeed = 0.5
    else
        hspeed = -0.5
}

