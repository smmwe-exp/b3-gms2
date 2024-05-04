if instance_exists(obj_button_home)
{
    with (obj_button_home)
        instance_destroy()
}
with (obj_button_close_menu)
    instance_destroy()
with (obj_settings_button)
    instance_destroy()
with (obj_button_paloma)
    instance_destroy()
if instance_exists(obj_expand)
{
    with (obj_expand)
        active = 0
}
if ((!instance_exists(obj_settings_panel)) && ((!instance_exists(obj_window_alert)) && ((!instance_exists(obj_panel_list)) && instance_exists(obj_creator_jugar_editar))))
    audio_resume_sound(obj_creator_jugar_editar.music_editor)
if (instance_exists(obj_gb_button) && (!instance_exists(obj_settings_panel)))
{
    with (obj_gb_button)
        alarm[0] = 15
}

