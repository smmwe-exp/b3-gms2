if (global.apariencia == 0)
{
    sprite_index = spr_SMB3_explotion
    image_speed = 0.4
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_explotion
    image_speed = 0.4
}
else if (global.apariencia == 4)
{
    sprite_index = spr_SMB2_explotion
    image_speed = 0.4
}
else
    image_speed = 0.45
if (!outside_view())
{
    audio_stop_sound(scr_snd_explode())
    audio_play_sound(scr_snd_explode(), 0, false)
}
alarm[0] = 30
big = 0
active_block = 0
hitpoint = 0

