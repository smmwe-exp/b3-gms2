audio_play_sound(snd_play_start_create, 0, false)
audio_stop_sound(snd_titlemusic)
audio_stop_sound(snd_titlemusic_night)
audio_play_sound(choose(223, 224), 0, false)
if instance_exists(obj_title_controller)
{
    with (obj_title_controller)
        ready = 1
}
if instance_exists(obj_editor_screen)
{
    with (obj_editor_screen)
        instance_destroy()
}
if instance_exists(obj_play_screen)
{
    with (obj_play_screen)
        instance_destroy()
}
if instance_exists(obj_title_oprime)
{
    with (obj_title_oprime)
        instance_destroy()
}

