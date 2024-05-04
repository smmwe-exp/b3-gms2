if (global.apariencia == 1)
{
    hspeed = (4 * direct)
    if (swimming == 1)
        vspeed = -4
    else
        vspeed = -8
    aplastar = 1
}
else if (global.apariencia == 2)
{
    if ((gravity == 0) && (sprite_index == spr_bowser_fire))
    {
        sprite_index = spr_bowser_walk
        image_speed = 0.08
    }
    else if ((gravity != 0) && (sprite_index == spr_bowser_fire))
    {
        sprite_index = spr_bowser_jump
        image_speed = 0
        image_index = 1
    }
}

