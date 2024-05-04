if (global.apariencia == 2)
{
    if (instance_exists(obj_mario) && (gravity == 0))
    {
        if (swimming == 1)
            vspeed = -2
        else
            vspeed = -2.5
        sprite_index = spr_jumppiranha
        image_speed = 0.15
    }
    else
    {
        alarm[0] = 1
        exit
    }
}

