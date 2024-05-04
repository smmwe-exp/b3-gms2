if (global.apariencia == 1)
{
    if (gravity == 0)
    {
        hspeed = 0
        alarm[3] = 25
    }
    else
        alarm[0] = 2
}
else if (global.apariencia == 2)
{
    if ((sprite_index != spr_bowser_prepare_fire) || ((sprite_index != spr_bowser_turning) || ((sprite_index != spr_bowser_fire_up) || ((sprite_index != spr_bowser_up) || (sprite_index != spr_bowser_big_fire)))))
    {
        if (dir_left_right == 0)
        {
            hspeed = 0.2
            dir_left_right = 1
        }
        else
        {
            hspeed = -0.2
            dir_left_right = 0
        }
        alarm[0] = 240
    }
    else
        alarm[0] = 2
}

