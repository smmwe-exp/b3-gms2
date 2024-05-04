if (global.apariencia == 0)
{
    sprite_index = spr_SMB_key
    sparkles = 1324
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_key
    sparkles = 1324
}
else if (global.apariencia == 2)
    sparkles = 2579
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_key_night
    else
        sprite_index = spr_SMB2_key
    sparkles = 3768
}
else
    sparkles = 2579
image_speed = 0.18
gravity = 0
ready = 0
followers = 2

