image_speed = 0
if (global.apariencia == 0)
{
    sprite_index = spr_SMB_block_rock
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        image_index = 5
    else if (global.bg_level == "snow")
        image_index = 4
    else if (global.bg_level == "underwater")
        image_index = 3
    else if ((global.bg_level == "castle") || (global.bg_level == "airship"))
        image_index = 2
    else if ((global.bg_level == "underground") || (global.bg_level == "ghost"))
        image_index = 1
    else
        image_index = 0
    shard = 423
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_block_rock
    if ((global.bg_level == "snow") && (global.modo_noche == 1))
        image_index = 4
    else if (global.bg_level == "snow")
        image_index = 3
    else if (global.bg_level == "castle")
        image_index = 2
    else if ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1)))
        image_index = 1
    else
        image_index = 0
    shard = 1143
}
else if (global.apariencia == 2)
{
    if ((global.bg_level == "ghost") || (global.bg_level == "airship"))
    {
        sprite_index = spr_madera
        shard = 1744
    }
    else
    {
        sprite_index = spr_block_rock
        shard = 1742
    }
}
else if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_block_rock
    if (global.bg_level == "ghost")
        image_index = 5
    else if (((global.bg_level == "airship") || (global.bg_level == "sky")) && (global.modo_noche == 0))
        image_index = 4
    else if (global.bg_level == "underwater")
        image_index = 3
    else if (global.bg_level == "castle")
        image_index = 2
    else if ((global.bg_level == "underground") || (global.modo_noche == 1))
        image_index = 1
    else
        image_index = 0
    shard = 423
}
else if (global.apariencia == 4)
{
    sprite_index = spr_SMB2_block_rock
    if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
        image_index = 1
    else
        image_index = 0
    shard = 3615
}
wings = 0
wings_anim = 0
if (global.apariencia == 0)
    sprite_wings = 370
else if (global.apariencia == 1)
    sprite_wings = 1064
else
    sprite_wings = 1928
alarm[10] = 4

