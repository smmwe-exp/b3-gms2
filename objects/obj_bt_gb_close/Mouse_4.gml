if (press == 1)
{
    audio_play_sound(snd_item_deselect, 0, false)
    global.levelguardabot = ""
    global.apariencia = 2
    global.condiciones = 0
    global.condiciones_type = 0
    global.condiciones_object = 0
    global.condiciones_count = 0
    with (obj_gb_level)
        instance_destroy()
}

