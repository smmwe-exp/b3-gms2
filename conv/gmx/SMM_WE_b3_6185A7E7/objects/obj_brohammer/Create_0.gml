if (global.apariencia == 0)
    sprite_index = spr_SMB_hammer
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_hammer
else if (global.apariencia != 2)
    sprite_index = spr_SMB_hammer
if ((global.bg_level == "underwater") || (((global.bg_level == "sky") && (global.modo_noche == 1)) || (((global.bg_level == "airship") && (global.modo_noche == 1)) || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 14)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))))
{
    vspeed = -2
    gravity = 0.05
}
else
{
    vspeed = -3
    gravity = 0.125
}
direct = 1

