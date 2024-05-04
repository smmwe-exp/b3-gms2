if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || (((global.modo_noche == 1) && (global.bg_level == "airship")) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
{
    if (wings == 1)
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
else if (wings == 1)
{
    if (direct == 1)
        hspeed = 0.5
    else
        hspeed = -0.5
}
else if (direct == 1)
    hspeed = 0.7
else
    hspeed = -0.7
if ((wings == 1) || (paracaidas == 1))
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_bobomb_ready_wings
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_bobomb_ready_wings
    else if (global.apariencia == 2)
        sprite_index = spr_bobomb_ready_wings
}

