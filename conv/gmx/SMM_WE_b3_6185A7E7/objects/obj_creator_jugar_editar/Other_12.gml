if ((obj_levelmanager.editor == 1) && (obj_editormanager.expand_open == 0))
{
    obj_erase.active = 0
    obj_cursor.image_index = 0
    global.instance_deactivate = 0
    if instance_exists(obj_apariencia)
    {
        with (obj_apariencia)
            instance_destroy()
    }
    alarm[6] = 12
}
else if (obj_levelmanager.editor == 0)
{
    if instance_exists(obj_goalgate)
    {
        with (obj_goalgate)
            alarm[1] = -1
    }
    global.instance_deactivate = 0
    audio_stop_sound(bgm_smwclear)
    alarm[7] = 12
}

