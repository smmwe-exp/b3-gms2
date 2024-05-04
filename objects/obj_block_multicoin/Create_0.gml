if (global.apariencia == 0)
{
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        sprite_index = spr_SMB_block_ice
    else if (global.bg_level == "snow")
        sprite_index = spr_SMB_block_snow
    else if (global.bg_level == "castle")
        sprite_index = spr_SMB_block_dark
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = spr_SMB_block_night
    else
        sprite_index = spr_SMB_block
}
else if (global.apariencia == 1)
{
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        sprite_index = spr_SMB3_blocks_ice
    else if (global.bg_level == "castle")
        sprite_index = spr_SMB3_block_dark
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = spr_SMB3_block_night
    else
        sprite_index = spr_SMB3_block
}
else if (global.apariencia == 3)
{
    if (global.bg_level == "castle")
        sprite_index = spr_NSMBU_qblock_dark
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = spr_NSMBU_qblock_night
    else
        sprite_index = spr_NSMBU_qblock
}
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_question_block_night
    else
        sprite_index = spr_SMB2_question_block
}
image_speed = 0.15
ready = 0
cointime = 0
mysolid = instance_create(x, y, obj_solid)
wings = 0
wings_anim = 0
if (global.apariencia == 0)
    sprite_wings = 370
else if (global.apariencia == 1)
    sprite_wings = 1064
else
    sprite_wings = 1928
alarm[10] = 4

