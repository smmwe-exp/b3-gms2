if (global.apariencia == 0)
{
    if ((global.modo_noche == 1) && (global.bg_level == "ground"))
        sprite_index = spr_SMB_rotten
    else
    {
        sprite_index = spr_SMB_1up
        image_index = 1
    }
    sprite_wings = 370
}
else if (global.apariencia == 1)
{
    if ((global.modo_noche == 1) && (global.bg_level == "ground"))
        sprite_index = spr_SMB3_rotten
    else
    {
        sprite_index = spr_SMB3_1up
        image_index = 1
    }
    sprite_wings = 1064
}
else if (global.apariencia == 2)
{
    if ((global.modo_noche == 1) && (global.bg_level == "ground"))
        sprite_index = spr_rotten
    else
        image_index = 1
    sprite_wings = 1928
}
else if (global.apariencia == 4)
{
    if ((global.modo_noche == 1) && (global.bg_level == "ground"))
        sprite_index = spr_SMB2_rotten
    else
    {
        if ((global.bg_level == "castle") || ((global.bg_level == "underground") || ((global.bg_level == "ghost") || (global.modo_noche == 1))))
            image_index = 1
        else
            image_index = 0
        sprite_index = spr_SMB2_1up
    }
    sprite_wings = 1928
}
else
    sprite_wings = 1928
image_speed = 0
swimming = 0
hardness = 100
stomp = -1
edible = 0
direct = 1
delay = 0
charge = 0
ready = 0
xscale2 = 1
yscale2 = 1
wings = 0
wings_anim = 0
paracaidas = 0
alarm[10] = 2

