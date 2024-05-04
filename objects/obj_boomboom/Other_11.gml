if (ready == 0)
{
    hspeed = 0
    if (hitpoints == 1)
    {
        sprite_index = s_boomboom_dead
        with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), bbox_top, obj_score))
            event_user(5)
        if (key == 1)
        {
            with (instance_create((x - 8), (y - 8), obj_key_appear))
                vspeed = -4
            key = 0
        }
        alarm[0] = 120
    }
    else
    {
        if ((global.apariencia == 0) || (global.apariencia == 1))
            sprite_index = s_boomboom_dead
        else if (global.apariencia == 2)
            sprite_index = spr_boomboom_hurt
        if (hitpoints == 3)
        {
            hitpoints = 2
            increment = 1.5
        }
        else
        {
            hitpoints = 1
            increment = 2
        }
        alarm[2] = 60
    }
    ready = 1
    image_speed = 0.15
    alarm[1] = -1
    alarm[9] = -1
    alarm[10] = -1
    alarm[11] = -1
    stomp = -1
}

