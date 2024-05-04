if instance_exists(obj_mario)
{
    with (instance_create(x, y, obj_getshoe))
    {
        if (other.object_index == obj_kuriboshoe2)
            bota = 2
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

