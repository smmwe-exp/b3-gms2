if ((global.cursor == 0) && ((can_press == 1) && (!instance_exists(obj_gb_level))))
{
    audio_play_sound(snd_abrir_menu, 0, false)
    instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_edit_menu)
    obj_cursor.image_index = 0
    if instance_exists(obj_gb_button)
    {
        with (obj_gb_button)
            press = 1
    }
    if instance_exists(obj_guardabot)
    {
        with (obj_guardabot)
            can_anim = 0
    }
    can_press = 0
}

