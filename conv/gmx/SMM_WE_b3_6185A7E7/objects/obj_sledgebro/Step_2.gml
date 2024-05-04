if (!instance_exists(obj_deadmario))
{
    if (gravity > 0)
    {
        sprite_index = s_sledgebro
        if (global.apariencia < 2)
            image_speed = 0.15
        else
        {
            image_speed = 0
            if (vspeed > 0)
                image_index = 1
            else
                image_index = 0
        }
    }
    else if (throw == 0)
    {
        sprite_index = s_sledgebro
        image_speed = 0.125
    }
    else if throw
    {
        sprite_index = s_sledgebro_throw
        image_speed = 0
        image_index = (throw - 1)
    }
}

