if (gravity == 0)
{
    hspeed = (max(0, (abs(hspeed) - 0.15)) * sign(hspeed))
    if (abs(hspeed) < 0.15)
        hspeed = 0
}
if instance_exists(obj_mario)
{
    if (obj_mario.y < (y - 21))
    {
        if (global.apariencia == 0)
            sprite_index = spr_SMB_pplant_fire_up
        else if (global.apariencia == 1)
            sprite_index = spr_SMB3_pplant_fire_up
        else if (global.apariencia == 2)
            sprite_index = spr_pplant_fire_up
    }
    else if (obj_mario.y > (y - 21))
    {
        if (global.apariencia == 0)
            sprite_index = spr_SMB_pplant_fire_down
        else if (global.apariencia == 1)
            sprite_index = spr_SMB3_pplant_fire_down
        else if (global.apariencia == 2)
            sprite_index = spr_pplant_fire_down
    }
}
if ((!instance_exists(obj_mario)) || (obj_mario.x < x))
    direct = -1
else
    direct = 1
if (wings == 1)
    wings_anim += 0.12

