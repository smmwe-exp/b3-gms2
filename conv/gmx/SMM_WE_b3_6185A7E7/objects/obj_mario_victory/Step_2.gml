if (gravity == 0)
{
    if (hspeed == 0)
    {
        sprite_index = scr_mariowalk()
        image_speed = 0
        image_index = 0
    }
    else
    {
        sprite_index = scr_mariowalk()
        image_speed = abs((hspeed / 10))
    }
}

