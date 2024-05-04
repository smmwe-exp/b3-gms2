if ((canpress == 1) && (!instance_exists(obj_load_image)))
{
    audio_play_sound(snd_aceptar, 0, false)
    if (sprite_index == spr_button_notification_no)
    {
        instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_panel_list)
        with (obj_alert_load)
            instance_destroy()
    }
    else if (sprite_index == spr_button_notification_si)
    {
        instance_create((__view_get( e__VW.XView, 0 ) + 338), (__view_get( e__VW.YView, 0 ) + 198), obj_load_image)
        global.instance_deactivate = 0
        alarm[1] = 12
        alarm[0] = 13
    }
}

