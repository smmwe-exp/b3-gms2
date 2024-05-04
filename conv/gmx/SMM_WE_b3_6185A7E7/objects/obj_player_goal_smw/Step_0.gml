event_inherited()
if ((global.bg_level == "underwater") || (instance_exists(obj_lava_water) && ((y > (obj_lava_water.y + 16)) && ((global.bg_level == "forest") && (global.modo_noche == 0)))))
    swim = 1
if (gravity == 0)
{
    if (can_walk == 1)
    {
        if (swimming == 1)
        {
            hspeed += 0.125
            if (hspeed > 0.5)
                hspeed = 0.5
        }
        else
        {
            hspeed += 0.125
            if (hspeed > 1.5)
                hspeed = 1.5
        }
        direct = 1
    }
    if instance_exists(obj_ground3)
    {
        if (x >= (obj_ground3.x + 106))
        {
            hspeed = 0
            can_walk = 0
            direct = -1
            sprite_index = scr_marioidle()
            image_speed = 0
            image_index = 0
        }
    }
    else if (x >= (xstart + 106))
    {
        hspeed = 0
        direct = -1
        can_walk = 0
        sprite_index = scr_marioidle()
        image_speed = 0
        image_index = 0
    }
}

