if (mouse_check_button_pressed(1) && (image_index == 1))
{
    audio_play_sound(snd_inventory, 0, false)
    audio_stop_sound(snd_super_experto)
    global.modojuego = 2
    room_goto(rm_entrenamiento)
}

