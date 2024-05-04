event_inherited()
if (global.apariencia == 0)
    sprite_index = spr_SMB_fire_clown
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_fire_clown_big
image_speed = 0.2
direct = 1
audio_stop_sound(snd_clown_fire)
audio_play_sound(snd_clown_fire, 0, false)

