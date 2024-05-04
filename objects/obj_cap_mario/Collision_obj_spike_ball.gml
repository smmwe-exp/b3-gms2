if instance_exists(obj_mario)
{
    if (((obj_mario.caped == 1) && (sprite_index == spr_cap_spinjump)) || ((obj_mario.stompstyle == 1) && (sprite_index == spr_cap_spinjump)))
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        if (obj_mario.x < other.x)
        {
            with (other.id)
            {
                vspeed = -2
                hspeed = 1.2
            }
        }
        else
        {
            with (other.id)
            {
                vspeed = -2
                hspeed = -1.2
            }
        }
    }
}

