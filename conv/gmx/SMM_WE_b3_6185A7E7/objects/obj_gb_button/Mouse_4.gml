if ((texto != "") && (press == 0))
{
    audio_play_sound(snd_aceptar, 0, false)
    global.levelguardabot = texto
    obj_gb_button.press = 1
    obj_bt_gb_next.visible = 0
    obj_bt_gb_before.visible = 0
    instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_gb_level)
}

