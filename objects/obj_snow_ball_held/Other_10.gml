with (instance_create(x, y, obj_smoke))
{
    if (global.apariencia == 2)
        sprite_index = spr_snow_ball_effect
    else if (global.apariencia == 4)
        sprite_index = spr_SMB2_snow_ball_effect
    else
        sprite_index = spr_SMB3_snow_ball_effect
    image_speed = 0.25
}
instance_destroy()

