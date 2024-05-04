if (caer == 1)
{
    if (image_angle >= 90)
    {
        image_angle = 90
        audio_play_sound(scr_snd_thwomp(), 0, false)
        if instance_exists(obj_levelmanager)
        {
            with (obj_levelmanager)
                alarm[11] = 1
        }
        cadena = 1
        alarm[0] = 5
        alarm[2] = 65
        if instance_exists(obj_enemy_dead_castle)
        {
            with (obj_enemy_dead_castle)
            {
                alarm[0] = 1
                alarm[1] = 120
            }
        }
        caer = 2
    }
    else
        image_angle += 4
}

