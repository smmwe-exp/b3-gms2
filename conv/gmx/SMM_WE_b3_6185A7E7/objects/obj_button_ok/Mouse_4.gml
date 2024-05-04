if instance_exists(obj_time)
{
    audio_play_sound(snd_panel_close, 0, false)
    with (obj_time)
        event_user(0)
    with (obj_editormanager)
        alarm[0] = 15
}
else if instance_exists(obj_autoavance)
{
    audio_play_sound(snd_panel_close, 0, false)
    with (obj_autoavance)
        event_user(0)
    with (obj_editormanager)
        alarm[0] = 15
}
else if instance_exists(obj_condiciones)
{
    audio_play_sound(snd_panel_close, 0, false)
    global.condiciones = 1
    with (obj_condiciones)
        event_user(0)
    with (obj_editormanager)
        alarm[0] = 15
}

