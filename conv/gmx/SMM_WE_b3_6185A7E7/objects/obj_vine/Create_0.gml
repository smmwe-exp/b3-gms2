if (global.apariencia == 0)
{
    sprite_index = spr_SMB_vine
    image_speed = 0
    image_index = 0
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_vine
    image_speed = 0.12
}
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
        sprite_index = spr_SMB2_beanstalk_night
    else
        sprite_index = spr_SMB2_beanstalk
    image_speed = 0.12
}
else
    image_speed = 0.12

