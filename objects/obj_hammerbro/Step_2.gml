if (!instance_exists(obj_deadmario))
{
    if (gravity > 0)
    {
        if tirar
        {
            sprite_index = s_hammerbro_throw
            image_speed = 0
            image_index = (tirar - 1)
        }
        else if ((tirar == 0) && (global.apariencia == 2))
        {
            sprite_index = s_hammerbro_jump
            image_speed = 0
        }
        else
        {
            sprite_index = s_hammerbro
            image_speed = 0.125
        }
    }
    else
    {
        image_speed = 0.125
        if (tirar == 0)
            sprite_index = s_hammerbro
        else if tirar
        {
            sprite_index = s_hammerbro_throw
            image_index = (tirar - 1)
        }
    }
}

