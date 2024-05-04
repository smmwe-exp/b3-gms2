audio_play_sound(scr_snd_kick(), 0, false)
if (global.apariencia != 2)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        s_part = spr_SMB3_spike_ball_part_night
    else
        s_part = spr_SMB3_spike_ball_part
}
else if (global.apariencia == 2)
    s_part = 2586
imdead = instance_create((x + 4), (y + 4), obj_enemy_dead)
imdead.girar = 1
imdead.sprite_index = s_part
imdead.image_speed = 0
imdead.image_index = 0
imdead.direct = 1
imdead.gravity = 0.16
imdead2 = instance_create((x - 4), (y + 12), obj_enemy_dead)
imdead2.girar = 1
imdead2.sprite_index = s_part
imdead2.image_speed = 0
imdead2.image_index = 1
imdead2.direct = 1
imdead2.gravity = 0.16
imdead3 = instance_create((x + 6), (y + 2), obj_enemy_dead)
imdead3.girar = 1
imdead3.sprite_index = s_part
imdead3.image_speed = 0
imdead3.image_index = 2
imdead3.direct = 1
imdead3.gravity = 0.16
imdead4 = instance_create((x + 6), (y + 14), obj_enemy_dead)
imdead4.girar = 1
imdead4.sprite_index = s_part
imdead4.image_speed = 0
imdead4.image_index = 2
imdead4.direct = 1
imdead4.gravity = 0.16
imdead5 = instance_create((x - 6), (y + 2), obj_enemy_dead)
imdead5.girar = 1
imdead5.sprite_index = s_part
imdead5.image_speed = 0
imdead5.image_index = 1
imdead5.direct = 1
imdead5.gravity = 0.16
imdead6 = instance_create((x - 6), (y + 14), obj_enemy_dead)
imdead6.girar = 1
imdead6.sprite_index = s_part
imdead6.image_speed = 0
imdead6.image_index = 1
imdead6.direct = 1
imdead6.gravity = 0.16
imdead.vspeed = -2
imdead2.vspeed = -0.6
imdead3.hspeed = 0.6
imdead4.hspeed = 0.6
imdead5.hspeed = -0.6
imdead6.hspeed = -0.6
instance_destroy()

