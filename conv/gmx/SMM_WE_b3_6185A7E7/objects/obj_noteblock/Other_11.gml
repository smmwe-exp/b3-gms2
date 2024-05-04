var sprite;
if (sprout != -1)
{
    if (sprout == -28)
    {
        audio_play_sound(scr_snd_sprout(), 0, false)
        with (instance_create(x, ystart, obj_beanstalk))
        {
            ready = 0
            downwards = 1
            alarm[2] = 60
        }
        sprout = -1
    }
    else
    {
        sprite = scr_constant_get_sprite(sprout)
        if ((sprite == 588) || ((sprite == 1307) || (sprite == 2244)))
        {
            with (instance_create(x, y, obj_key_appear))
                vspeed = 3.5
        }
        else
            scr_sprite_make_object(x, (ystart + 16), sprite)
        sprout = -1
    }
}

