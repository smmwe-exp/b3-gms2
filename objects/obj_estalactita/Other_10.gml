if (global.apariencia != 2)
{
    audio_stop_sound(snd_SMB3_estalactita_break)
    audio_play_sound(snd_SMB3_estalactita_break, 0, false)
}
else if (global.apariencia == 2)
{
    audio_stop_sound(snd_estalactita_break)
    audio_play_sound(snd_estalactita_break, 0, false)
}
with (instance_create((x - 8), y, obj_smoke))
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_estalactita_break
    else if (global.apariencia == 1)
        sprite_index = spr_SMB3_estalactita_break
    else if (global.apariencia == 2)
        sprite_index = spr_estalactita_break
    else
        sprite_index = spr_SMB3_estalactita_break
    image_speed = 0.6
}
y = (room_height + 64)

