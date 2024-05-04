with (obj_configurar_controles)
    instance_destroy()
with (obj_button_settings_idioma)
    instance_destroy()
with (obj_button_settings_sonidos)
    instance_destroy()
with (obj_selecting_player)
    instance_destroy()
with (obj_button_settings_close)
    instance_destroy()
with (obj_button_settings_estrella)
    instance_destroy()
with (obj_button_settings_sm4j)
    instance_destroy()
with (obj_window_select)
    instance_destroy()
if instance_exists(obj_button_home)
{
    with (obj_button_home)
        alarm[0] = 15
}
if instance_exists(obj_pausa_button)
{
    with (obj_pausa_button)
        alarm[0] = 20
}
if instance_exists(obj_editormanager)
    obj_editormanager.expand_open = 0

