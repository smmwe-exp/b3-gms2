if (global.apariencia == 0)
{
    s_chain_a = 359
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    {
        sprite_index = spr_SMB_chainchomp_night
        s_chain_b = 1
    }
    else
    {
        sprite_index = spr_SMB_chainchomp
        s_chain_b = 0
    }
}
else if (global.apariencia == 1)
{
    s_chain_a = 1042
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    {
        sprite_index = spr_SMB3_chainchomp_night
        s_chain_b = 1
    }
    else
    {
        sprite_index = spr_SMB3_chainchomp
        s_chain_b = 0
    }
}
else if (global.apariencia == 2)
{
    s_chain_a = 1942
    s_chain_b = 0
}
else if (global.apariencia == 3)
{
    s_chain_a = 3124
    sprite_index = spr_NSMBU_chainchomp
    s_chain_b = 0
}
else
{
    s_chain_a = 359
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    {
        sprite_index = spr_SMB_chainchomp_night
        s_chain_b = 1
    }
    else
    {
        sprite_index = spr_SMB_chainchomp
        s_chain_b = 0
    }
}
hardness = 0
stomp = 1
edible = 0
direct = -1
dead_h = 0
modo_lava = 0
wings = 0
w_wings = 0
swimming = 0
fallow_chomp = 1
apilar = 0
alarm[10] = 2
image_speed = 0.15
s_chomp = 1917
s_chain = 1942
s_chain_image = 0
followers = 5
closeness = 7
amount_previous = 40
for (i = 0; i < amount_previous; i += 1)
{
    oldx[i] = x
    oldy[i] = y
}

