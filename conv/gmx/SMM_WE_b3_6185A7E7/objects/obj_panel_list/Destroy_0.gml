with (obj_button_notification_cancelar)
    instance_destroy()
with (obj_list_item)
    instance_destroy()
with (obj_bt_load_next)
    instance_destroy()
with (obj_bt_load_before)
    instance_destroy()
if instance_exists(obj_menu_editor)
{
    with (obj_menu_editor)
        alarm[0] = 5
}
if (instance_exists(obj_creator_jugar_editar) && (!instance_exists(obj_alert_load)))
    audio_resume_sound(obj_creator_jugar_editar.music_editor)
if instance_exists(obj_expand)
{
    with (obj_expand)
        alarm[0] = 15
}
ds_list_destroy(my_list)

