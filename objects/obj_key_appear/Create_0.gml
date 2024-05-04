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
vspeed = -3
image_speed = 0.18
friction = 0.2175
audio_stop_sound(snd_key_appear)
audio_play_sound(snd_key_appear, 0, false)
ready = 0
followers = 2
alarm[1] = 1

