global.instance_deactivate = 1
with (obj_noti_load_button)
    instance_destroy()
if (instance_exists(obj_creator_jugar_editar) && (!instance_exists(obj_panel_list)))
    audio_resume_sound(obj_creator_jugar_editar.music_editor)

