if (global.apariencia == 1)
{
    if (search == 1)
    {
        sprite_index = spr_SMB3_bowser_search
        image_speed = 0.07
        search = 0
        aplastar2 = 0
        search2 = 1
        alarm[2] = 40
    }
    else if (search2 == 1)
    {
        alarm[10] = 1
        alarm[5] = choose(240, 480, 180, 480)
        search2 = 0
    }
    else if ((gravity == 0) && ((sprite_index != spr_SMB3_bowser_turning) && ((sprite_index != spr_SMB3_bowser_fire) && ((sprite_index != spr_bowser_fire_up) && (sprite_index != spr_bowser_up)))))
    {
        hspeed = 0
        alarm[0] = -1
        alarm[5] = -1
        alarm[3] = -1
        alarm[10] = -1
        sprite_index = spr_SMB3_bowser_turning
        image_speed = 0.13
    }
    else
        alarm[2] = 1
}
else if (global.apariencia == 2)
{
    if ((gravity == 0) && ((sprite_index != spr_bowser_turning) && (sprite_index != spr_bowser_fire)))
    {
        alarm[0] = -1
        alarm[5] = -1
        alarm[3] = -1
        hspeed = 0
        sprite_index = spr_bowser_turning
        image_speed = 0.1
    }
    else
        alarm[2] = 1
}

