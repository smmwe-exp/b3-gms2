if ((obj_mario.holding == 0) && (obj_mario.visible == 1))
{
    x = obj_mario.x
    y = (obj_mario.y + 16)
    obj_mario.holding = 3
    audio_play_sound(snd_step_enemy, 0, false)
    if ((sprite_index == spr_SMB_kuriboshoe2) || (sprite_index == spr_kuriboshoe2))
        instance_create(obj_mario.x, obj_mario.y, obj_kuriboshoe2)
    else
        instance_create(obj_mario.x, obj_mario.y, obj_kuriboshoe)
    instance_destroy()
}

