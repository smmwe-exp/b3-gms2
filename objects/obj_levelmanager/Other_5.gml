if (switchon == 1)
    global.pswitch = alarm[10]
if audio_is_playing(snd_pmeter)
    audio_stop_sound(snd_pmeter)
if audio_is_playing(snd_NSMBU_ambiente_airship)
    audio_stop_sound(snd_NSMBU_ambiente_airship)
global.timer = 0
if ((obj_persistent.modo_android == 1) && ((global.controles_tactiles == 1) && (room == rm_title)))
{
    with (obj_persistent)
    {
        event_user(4)
        event_user(5)
    }
}

