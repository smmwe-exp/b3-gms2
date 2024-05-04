if (global.apariencia == 1)
{
    if (sprite_index != spr_SMB3_bowser_turning)
    {
        sprite_index = spr_SMB3_bowser_fire
        image_speed = 0.15
    }
    else
        alarm[1] = 2
}
else if (global.apariencia == 2)
{
    if ((sprite_index != spr_bowser_turning) && ((sprite_index != spr_bowser_fire_up) && (sprite_index != spr_bowser_up)))
    {
        sprite_index = spr_bowser_fire
        image_speed = 0.15
    }
    else
        alarm[1] = 2
}

