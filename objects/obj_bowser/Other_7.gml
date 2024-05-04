if (global.apariencia == 1)
{
    if (sprite_index == spr_SMB3_bowser_turning)
    {
        sprite_index = spr_SMB3_bowser_walk
        image_speed = 0
        image_index = 1
        alarm[4] = -1
        alarm[10] = 2
        alarm[5] = choose(240, 360, 180, 240)
        if (direct == 1)
            direct = -1
        else
            direct = 1
    }
    else if (sprite_index == spr_SMB3_bowser_fire)
    {
        image_speed = 0
        image_index = 3
        alarm[4] = 4
    }
}
else if (global.apariencia == 2)
{
    if (sprite_index == spr_bowser_prepare_fire)
    {
        image_speed = 0
        image_index = 4
        alarm[8] = 15
    }
    else if (sprite_index == spr_bowser_fire_up)
    {
        image_speed = 0
        image_index = 0
        alarm[9] = 5
    }
    else if (sprite_index == spr_bowser_turning)
    {
        sprite_index = spr_bowser_walk
        image_speed = 0.08
        alarm[0] = 2
        alarm[1] = 2
        alarm[4] = -1
        alarm[5] = 2
        alarm[3] = 20
        if (direct == 1)
            direct = -1
        else
            direct = 1
    }
    else if (sprite_index == spr_bowser_fire)
    {
        image_speed = 0
        image_index = 1
        alarm[4] = 1
        alarm[6] = 20
    }
    else if (sprite_index == spr_bowser_jump)
    {
        image_speed = 0
        image_index = 1
    }
}

