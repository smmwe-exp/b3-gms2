if (gravity == 0)
{
    alarm[0] = -1
    alarm[1] = -1
    alarm[5] = -1
    alarm[3] = -1
    hspeed = 0
    if (disup_cont == 0)
    {
        sprite_index = spr_bowser_prepare_fire
        image_speed = 0.09
    }
    else
        image_speed = 0.1
}
else
    alarm[7] = 2

