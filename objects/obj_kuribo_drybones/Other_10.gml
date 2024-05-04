if instance_exists(obj_mario)
{
    with (instance_create((x - 8), y, obj_shell_drybones))
    {
        if instance_exists(obj_mario)
            dir = obj_mario.direct
        while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_solid, 1, 0)
            x--
        while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)
            x++
    }
    with (obj_mario)
        visible = 1
    instance_destroy()
}

