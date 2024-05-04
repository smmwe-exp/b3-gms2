if (global.apariencia == 0)
    sprite_index = spr_SMB_fireball
else if (global.apariencia == 1)
    sprite_index = spr_SMB3_fireball
else if (global.apariencia == 4)
    sprite_index = spr_SMB2_fireball
swimming = 0
audio_play_sound(scr_snd_fireball(), 0, false)
image_speed = 0.15

