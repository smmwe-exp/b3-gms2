if (wings == 0)
{
    with (obj_mario)
        event_user(1)
    if (global.apariencia == 2)
    {
        instance_create((x - 8), y, obj_shell)
        with (instance_create(x, y, obj_beachkoopa))
        {
            sprite_index = spr_beachkoopa
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
        {
            sprite_index = spr_SMB3_shell
            key = other.key
        }
    }
    else if (global.apariencia == 0)
    {
        with (instance_create((x - 8), y, obj_shell))
        {
            sprite_index = spr_SMB_shell
            key = other.key
        }
    }
    instance_destroy()
}
else
{
    with (instance_create((x + (9 * direct)), (y + 9), obj_wings_dead))
        direct = other.direct
    wings = 0
    alarm[10] = 2
}

