if (sprout_key != -1)
{
    with (instance_create((x - 8), (y - 8), obj_key_appear))
        vspeed = -4
}
if (with_music == 1)
{
    audio_stop_sound(snd_effect_boss)
    audio_play_sound(obj_levelmanager.levelmusic, 99, true)
}
if (global.apariencia == 1)
    audio_play_sound(snd_SMB3_bowser_dead, 0, false)
else if (global.apariencia == 2)
    audio_play_sound(snd_bowser_dead, 0, false)
imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = direct
if (global.apariencia == 1)
    imdead.sprite_index = spr_SMB3_bowser_deads
else if (global.apariencia == 2)
    imdead.sprite_index = spr_bowser_walk
imdead.image_speed = 0.15
if (dead_h == 0)
{
    if ((other.hspeed == 0) && (direct == 1))
        imdead.hspeed = -1
    else if ((other.hspeed == 0) && (direct == -1))
        imdead.hspeed = 1
}
instance_destroy()

