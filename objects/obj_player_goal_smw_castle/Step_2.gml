var jump_number;
if (global.powerup == 0)
    mask_index = spr_smallmask
else if (global.powerup == -77)
    mask_index = spr_megamask
else
    mask_index = spr_bigmask
if (global.apariencia == 3)
{
    if (gravity == 0)
    {
        if (hspeed == 0)
        {
            if (fall == 1)
            {
                sprite_index = scr_NSMBU_idle()
                image_speed = 0.5
            }
            else
                image_speed = 0
        }
        else
        {
            sprite_index = scr_NSMBU_walk()
            image_speed = 0.6
        }
    }
    else if (place_free(x, (y + 1)) && (vspeed > 0))
    {
        if (jump_type == 1)
        {
            jump_number = 10
            sprite_index = scr_NSMBU_fall1()
        }
        else if (jump_type == 2)
        {
            jump_number = 8
            sprite_index = scr_NSMBU_fall2()
        }
        else
        {
            jump_number = 8
            sprite_index = scr_NSMBU_fall3()
        }
        if (image_index != jump_number)
            image_speed = 0.5
        else
        {
            image_speed = 0
            image_index = jump_number
        }
    }
    else
    {
        if (jump_type == 1)
        {
            jump_number = 17
            sprite_index = scr_NSMBU_jump1()
        }
        else if (jump_type == 2)
        {
            jump_number = 16
            sprite_index = scr_NSMBU_jump2()
        }
        else
        {
            jump_number = 17
            sprite_index = scr_NSMBU_jump3()
        }
        if (image_index != jump_number)
            image_speed = 0.5
        else
        {
            image_speed = 0
            image_index = jump_number
        }
    }
}
else if (gravity == 0)
{
    if (hspeed == 0)
    {
        if (fall == 1)
        {
            sprite_index = scr_marioidle()
            image_speed = 0
            image_index = 0
        }
        else
            image_speed = 0
    }
    else
    {
        sprite_index = scr_mariowalk()
        image_speed = abs((hspeed / 10))
    }
}
else
{
    if (place_free(x, (y + 1)) && (vspeed > 0))
        sprite_index = scr_mariodrop()
    else
        sprite_index = scr_mariojump()
    image_speed = 0
}

