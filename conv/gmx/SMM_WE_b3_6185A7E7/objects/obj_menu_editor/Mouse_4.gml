if ((obj_levelmanager.editor == 1) && ((obj_editormanager.expand_open == 0) && ((!instance_exists(obj_apariencia)) && ((!instance_exists(obj_bg_selection)) && ((global.cursor == 0) && ((can_press == 1) && (obj_creator_jugar_editar.image_speed == 0)))))))
{
    audio_play_sound(snd_abrir_menu, 0, false)
    instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_edit_menu)
    obj_erase.active = 0
    obj_cursor.image_index = 0
    obj_editormanager.expand_open = 2
    obj_expand.active = 1
}

