if (instance_exists(obj_cursor) && (obj_cursor.active_menu == 0))
{
    if (image_index == 2)
    {
        audio_stop_sound(snd_niveles_mundiales)
        audio_play_sound(snd_niveles_mundiales, 0, false)
        instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_settings_panel)
        if instance_exists(obj_edit_menu)
        {
            with (obj_edit_menu)
                instance_destroy()
        }
    }
    else if (image_index == 3)
    {
        audio_play_sound(snd_inventory, 0, false)
        scr_init_globals()
        if instance_exists(obj_creator_jugar_editar)
            audio_stop_sound(obj_creator_jugar_editar.music_editor)
        room_goto(rm_title)
    }
}

