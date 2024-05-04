if instance_exists(obj_parent_resource)
{
    if (instance_exists(obj_arrow_lock) && (obj_arrow_lock.visible == 1))
    {
        with (obj_load_image)
            instance_destroy()
        global.instance_deactivate = 1
        with (instance_create((__view_get( e__VW.XView, 0 ) + 134), (__view_get( e__VW.YView, 0 ) + 216), obj_toast))
            image_index = 6
    }
    else
        event_user(0)
}
else
{
    with (obj_load_image)
        instance_destroy()
    global.instance_deactivate = 1
    with (instance_create((__view_get( e__VW.XView, 0 ) + 134), (__view_get( e__VW.YView, 0 ) + 216), obj_toast))
        image_index = 4
}

