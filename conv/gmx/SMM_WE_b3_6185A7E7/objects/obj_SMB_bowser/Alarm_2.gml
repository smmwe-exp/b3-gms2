audio_play_sound(snd_SMB3_bowser_fire, 0, false)
with (instance_create((x - 16), (y - 15), obj_bowser_fire))
{
    if (choose(0, 1, 2) == 1)
    {
        vspeed = -1
        alarm[0] = 16
    }
    else if (choose(0, 1, 2) == 2)
    {
        vspeed = 1
        alarm[0] = 16
    }
}
image_speed = 0
image_index = 1
alarm[3] = 36

