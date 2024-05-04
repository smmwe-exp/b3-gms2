if (wings == 0)
{
    with (obj_mario)
        event_user(1)
    if (global.apariencia == 2)
    {
        with (instance_create((x - 8), y, obj_shell))
            sprite_index = spr_shell_red
        with (instance_create(x, y, obj_beachkoopa_red))
        {
            sprite_index = spr_beachkoopa_red
            if ((obj_mario.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
                hspeed = 3
            else if ((obj_mario.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
                hspeed = -3
            else
                hspeed = (3.5 * obj_mario.direct)
            alarm[11] = 30
            ready = 0
            key = other.key
        }
    }
    else if (global.apariencia == 1)
    {
        with (instance_create((x - 8), y, obj_shell))
            sprite_index = spr_SMB3_shell_red
    }
    else if (global.apariencia == 0)
    {
        with (instance_create((x - 8), y, obj_shell))
            sprite_index = spr_SMB_shell_red
    }
    instance_destroy()
}
else
{
    if (direct == 1)
    {
        with (instance_create((x - 9), (y + 9), obj_wings_dead))
            direct = 1
    }
    else
    {
        with (instance_create((x + 9), (y + 9), obj_wings_dead))
            direct = -1
    }
    wings = 0
    alarm[10] = 2
}

