if ((object_index == obj_original_n64) || ((object_index == obj_original_bowser) || (object_index == obj_original_bowserjr)))
{
    if ((can_active == 0) && ((!place_meeting(obj_mario.x, obj_mario.y, obj_parent_sounds)) && ((!audio_is_playing(sonido)) && ((!audio_is_playing(scr_switchsong())) && (!audio_is_playing(scr_snd_starman()))))))
    {
        if (instance_exists(obj_levelmanager) && audio_is_playing(obj_levelmanager.levelmusic))
        {
            audio_stop_sound(obj_levelmanager.levelmusic)
            if (obj_levelmanager.sound_effect != snd_SMB_music_ground)
                audio_stop_sound(obj_levelmanager.sound_effect)
            obj_levelmanager.sound_effect = sonido
            audio_play_sound(sonido, 1, true)
            if instance_exists(obj_efecto_musica)
            {
                with (obj_efecto_musica)
                    instance_destroy()
            }
            if instance_exists(obj_efecto_sonido)
            {
                with (obj_efecto_sonido)
                    instance_destroy()
            }
        }
        event_user(0)
        can_active = 1
    }
}
else if ((can_active == 0) && ((my_object == obj_lighting) || ((my_object != obj_lighting) && (!instance_exists(my_object)))))
    event_user(0)

