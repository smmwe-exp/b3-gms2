if (global.apariencia == 0)
{
    if (global.bg_level == "castle")
        sprite_index = spr_SMB_coin_rot_dark
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = spr_SMB_coin_rot_night
    else
        sprite_index = spr_SMB_coin_rot
}
else if (global.apariencia == 1)
{
    if (global.bg_level == "castle")
        sprite_index = spr_SMB3_coin_dark
    else if ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1)))
        sprite_index = spr_SMB3_coin_night
    else
        sprite_index = spr_SMB3_coin
}
else if (global.apariencia == 3)
    sprite_index = spr_NSMBU_coin
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_coin_night
    else
        sprite_index = spr_SMB2_coin
}
global.coins++
if (global.apariencia == 3)
    image_speed = 1
else
    image_speed = 0.3
vspeed = -4
gravity = 0.2
audio_play_sound(scr_snd_coin(), 0, false)

