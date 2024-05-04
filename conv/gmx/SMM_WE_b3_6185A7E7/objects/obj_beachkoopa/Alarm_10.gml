if (ready > 0)
{
    vspeed = -2
    event_inherited()
    if (sprite_index == spr_beachkoopa)
    {
        sprite_index = spr_beachkoopa_walk
        image_speed = 0.125
    }
    else if (sprite_index == spr_beachkoopa_red)
    {
        sprite_index = spr_beachkoopa_walk_red
        image_speed = 0.125
    }
}

