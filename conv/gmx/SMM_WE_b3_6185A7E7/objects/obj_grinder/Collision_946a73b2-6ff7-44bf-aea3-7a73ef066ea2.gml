if instance_exists(obj_mario)
{
    if (effect_helmet == 0)
    {
        if (other.object_index == obj_helmet_spiny)
        {
            audio_stop_sound(snd_helmet_spiny)
            audio_play_sound(snd_helmet_spiny, 0, false)
        }
        else
        {
            audio_stop_sound(snd_helmet)
            audio_play_sound(snd_helmet, 0, false)
        }
        with (instance_create(other.x, other.y, obj_smoke))
            sprite_index = spr_starhelmet
        effect_helmet = 1
        alarm[0] = 15
    }
    obj_mario.hspeed = lengthdir_x(2, point_direction(x, y, obj_mario.x, obj_mario.y))
    obj_mario.vspeed = 1
}

