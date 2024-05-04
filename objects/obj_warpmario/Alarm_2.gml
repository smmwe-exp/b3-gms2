audio_play_sound(snd_explode, 0, false)
hspeed = 4
vspeed = -4
visible = 1
if (holding == 0)
    sprite_index = scr_mariorunjump()
else
    sprite_index = scr_mariohold()
image_speed = 0
image_index = 0
direct = 1
alarm[3] = 30

