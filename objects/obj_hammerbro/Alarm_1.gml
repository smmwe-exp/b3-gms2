if (vspeed == 0)
{
    if (wings == 1)
    {
        if (swimming == 1)
        {
            altura_max = -4
            altura_min = -1.5
        }
        else
        {
            altura_max = -8
            altura_min = -4.5
        }
    }
    else if (swimming == 1)
    {
        altura_max = -3
        altura_min = -1
    }
    else
    {
        altura_max = -6
        altura_min = -2.5
    }
    if (collision_rectangle(bbox_left, (bbox_top - 40), bbox_right, (bbox_top - 40), obj_blockparent, 0, 0) && collision_rectangle(bbox_left, (bbox_bottom + 8), bbox_right, (bbox_bottom + 8), obj_blockparent, 0, 0))
    {
        if ((floor(random(50)) < 25) && (((y + 32) < room_height) && (((y + 48) < room_height) && ((y + 64) < room_height))))
        {
            vspeed = altura_max
            alarm[4] = 2
            alarm[5] = 16
        }
        else if (((y + 16) < room_height) && (((y + 32) < room_height) && (((y + 48) < room_height) && ((y + 64) < room_height))))
        {
            vspeed = altura_min
            alarm[4] = 2
            alarm[5] = 35
        }
        else
        {
            vspeed = altura_max
            alarm[4] = 2
            alarm[5] = 16
        }
    }
    else if (collision_rectangle(bbox_left, (bbox_top - 40), bbox_right, (bbox_top - 40), obj_blockparent, 0, 0) && (((y + 16) < room_height) && (((y + 32) < room_height) && (((y + 48) < room_height) && ((y + 64) < room_height)))))
    {
        vspeed = altura_max
        alarm[4] = 2
        alarm[5] = 16
    }
    else if (collision_rectangle(bbox_left, (bbox_bottom + 8), bbox_right, (bbox_bottom + 8), obj_blockparent, 0, 0) && (((y + 16) < room_height) && (((y + 32) < room_height) && (((y + 48) < room_height) && ((y + 64) < room_height)))))
    {
        vspeed = altura_min
        alarm[4] = 2
        alarm[5] = 30
    }
    else
    {
        vspeed = altura_max
        alarm[4] = 2
        alarm[5] = 35
    }
    y--
    if (swimming == 1)
        gravity = 0.15
    else
        gravity = 0.25
    alarm[1] = 360
}
else
    alarm[1] = 360

