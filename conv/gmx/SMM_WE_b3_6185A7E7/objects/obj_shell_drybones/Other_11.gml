if (obj_mario.visible == 1)
{
    x = obj_mario.x
    y = (obj_mario.y + 16)
    obj_mario.holding = 3
    audio_play_sound(snd_shell_drybones_in, 0, false)
    instance_create(obj_mario.x, obj_mario.y, obj_kuribo_drybones)
    instance_destroy()
}

