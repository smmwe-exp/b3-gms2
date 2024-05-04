if (global.apariencia == 0)
{
    sprite_index = spr_SMB_beanstalk
    s_vine = 639
}
else if (global.apariencia == 1)
{
    sprite_index = spr_SMB3_beanstalk
    s_vine = 1370
}
else if (global.apariencia == 4)
{
    if ((global.bg_level == "castle") || ((global.bg_level == "ghost") || ((global.bg_level == "underground") || (global.modo_noche == 1))))
    {
        sprite_index = spr_SMB2_beanstalk_night
        s_vine = 3792
    }
    else
    {
        sprite_index = spr_SMB2_beanstalk
        s_vine = 3791
    }
}
else
    s_vine = 1959
first_bean = 0
downwards = 0
bean_last = 0
ready = 0
alarm[2] = 60
image_speed = 0.12
alarm[1] = 2
alarm[0] = 16

