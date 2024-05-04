if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_cheepcheep_res
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_cheepcheep_res
    else if (global.apariencia == 2)
        sprite_index = spr_cheepcheep_res
    if (instance_exists(obj_lava_water) && ((y >= (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0))))
        modo_water = 1
    else
        modo_water = 0
}

