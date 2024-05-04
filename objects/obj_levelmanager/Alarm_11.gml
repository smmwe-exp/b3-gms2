if (audio_is_playing(scr_snd_thwomp()) || (audio_is_playing(snd_es_ahh) || (audio_is_playing(snd_es_ubsi) || (audio_is_playing(snd_es_derrumbe) && (editor == 0)))))
{
    alarm[11] = 4
    obj_persistent.port_y = random_range(3, -3)
}
else
    obj_persistent.port_y = 0

