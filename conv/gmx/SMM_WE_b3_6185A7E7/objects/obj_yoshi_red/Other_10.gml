if (obj_mario.isduck == 1)
{
    locked = 2
    if (global.powerup != 2)
    {
        if (instance_number(obj_yoshifire_one) < 1)
        {
            mouthholder = 219
            mouthsprite = 1849
            audio_play_sound(snd_flames, 0, false)
            instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_one)
            mouthholder = -4
            mouthsprite = -4
            licking = 1
            alarm[2] = 8
            anim = 0
        }
    }
    else if (instance_number(obj_yoshifire) < 3)
    {
        mouthholder = 219
        mouthsprite = 1849
        audio_play_sound(snd_flames, 0, false)
        instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire)
        with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
            alarm[2] = 4
        with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
            alarm[1] = 4
        mouthholder = -4
        mouthsprite = -4
        licking = 1
        alarm[2] = 8
        anim = 0
    }
}
else
{
    locked = 1
    if (global.powerup != 2)
    {
        if (instance_number(obj_yoshifire_one) < 1)
        {
            mouthholder = 219
            mouthsprite = 1849
            audio_play_sound(snd_flames, 0, false)
            instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_one)
            mouthholder = -4
            mouthsprite = -4
            licking = 1
            alarm[2] = 8
            anim = 0
        }
    }
    else if (instance_number(obj_yoshifire) < 3)
    {
        mouthholder = 219
        mouthsprite = 1849
        audio_play_sound(snd_flames, 0, false)
        instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire)
        with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
            alarm[2] = 4
        with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
            alarm[1] = 4
        mouthholder = -4
        mouthsprite = -4
        licking = 1
        alarm[2] = 8
        anim = 0
    }
}

