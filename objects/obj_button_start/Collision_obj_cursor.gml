if (mouse_check_button_pressed(1) && (ready == 0))
{
    if instance_exists(obj_SMB1_walk)
    {
        with (obj_SMB1_walk)
        {
            sprite_index = spr_SMB1_lets
            image_speed = 0
        }
    }
    audio_play_sound(snd_letsgo, 0, false)
    alarm[0] = 100
    ready = 1
}

