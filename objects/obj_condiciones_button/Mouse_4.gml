if ((sprite_index == spr_condiciones_button_up) && (image_index == 0))
{
    audio_play_sound(snd_add_wings, 0, false)
    if (global.condiciones_type == 0)
    {
        if (global.condiciones_count == 0)
        {
            global.condiciones_count = 1
            with (obj_condiciones_button)
                image_index = 0
            image_index = 1
        }
    }
}
else if ((sprite_index == spr_condiciones_button_down) && (image_index == 0))
{
    audio_play_sound(snd_add_wings, 0, false)
    if (global.condiciones_type == 0)
    {
        if (global.condiciones_count == 1)
        {
            global.condiciones_count = 0
            with (obj_condiciones_button)
                image_index = 0
            image_index = 1
        }
    }
}

