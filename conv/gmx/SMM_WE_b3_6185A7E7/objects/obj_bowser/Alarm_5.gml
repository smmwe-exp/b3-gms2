if (global.apariencia == 1)
{
    if ((!collision_rectangle(bbox_left, (bbox_top - 16), bbox_right, bbox_top, obj_solid, 1, 0)) && (innave == 0))
        big_jump = 1
    else
        alarm[5] = 2
}
else if (global.apariencia == 2)
{
    if instance_exists(obj_mario)
    {
        if (((obj_mario.x < x) && (direct == 1)) || ((obj_mario.x > x) && (direct == -1)))
            alarm[2] = 1
        else
            alarm[5] = 4
    }
    else
        alarm[5] = 4
}

