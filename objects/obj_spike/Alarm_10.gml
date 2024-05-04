if (wings == 0)
{
    if (global.apariencia != 2)
    {
        if (direct == -1)
        {
            if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
                hspeed = -0.3
            else
                hspeed = -0.5
        }
        else if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
            hspeed = 0.3
        else
            hspeed = 0.5
    }
}
else if ((wings == 1) && (paracaidas == 0))
{
    vspeed = 0.5
    if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
        direct = -1
    else
        direct = 1
}
else if (paracaidas == 1)
    hspeed = -0.5

