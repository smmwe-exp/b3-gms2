if (obj_levelmanager.editor == 1)
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_block_hidden
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_block_hidden
    else if (global.apariencia == 2)
        sprite_index = spr_block_hidden
    if (((global.modo_noche == 1) && (global.bg_level != "underwater")) || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || ((global.bg_level == "forest") && (global.apariencia == 0)))))
        image_index = 1
    else if (global.bg_level == "underwater")
        image_index = 2
    else if (global.bg_level == "desert")
        image_index = 3
    else if (global.bg_level == "forest")
        image_index = 4
}

