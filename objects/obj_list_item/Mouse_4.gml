var alertload;
if ((texto != "") && (ready == 1))
{
    audio_play_sound(snd_aceptar, 0, false)
    alertload = instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_alert_load)
    alertload.myfile = texto
    with (obj_panel_list)
        instance_destroy()
}

