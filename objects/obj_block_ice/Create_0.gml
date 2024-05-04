if (global.apariencia == 0)
{
    sprite_index = spr_SMB_blockice
    shard = 425
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_block_ice
    shard = 1144
}
else if (global.apariencia == 3)
{
    sprite_index = spr_NSMBU_block_ice
    shard = 1743
}
else if (global.apariencia == 4)
{
    sprite_index = spr_SMB2_block_ice
    shard = 3617
}
else
    shard = 1743
wings = 0
wings_anim = 0
if (global.apariencia == 0)
    sprite_wings = 370
else if (global.apariencia == 1)
    sprite_wings = 1064
else
    sprite_wings = 1928
alarm[10] = 4

