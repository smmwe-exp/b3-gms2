if instance_exists(obj_mario)
{
    global.timer = 0
    alarm[10] = 1
    instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_time_up)
    with (instance_create(obj_mario.x, obj_mario.y, obj_deadmario))
        timeup = 1
    with (obj_mario)
        instance_destroy()
    exit
}
else
    alarm[4] = 1

