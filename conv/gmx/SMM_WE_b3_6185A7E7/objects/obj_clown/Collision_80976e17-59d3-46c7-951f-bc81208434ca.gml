if (obj_levelmanager.editor == 0)
{
    if (inmario == 1)
    {
        audio_stop_sound(snd_stomp)
        audio_play_sound(snd_stomp, 0, false)
        enablecontrol = 0
        if (sprite_index != s_clown_damage)
            alarm[2] = 30
        if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
            hspeed = 1.5
        else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            hspeed = -1.5
    }
    else if (inenemy == 0)
    {
        if ((other.bbox_bottom < ((bbox_top - vspeed) + 5)) && ((other.vspeed > 0) && ((other.object_index != obj_grinder) && (other.object_index != obj_thwomp))))
        {
            inenemy = 1
            sprite_index = s_clown_evil
            audio_play_sound(snd_clown_in, 0, false)
            enemyobject = other.id
            other.innave = 1
            with (other.id)
            {
                gravity = 0
                if (vspeed > 0)
                    vspeed = 0
            }
        }
    }
}

