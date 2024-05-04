if ((vspeed == 0) && (ready == 0))
{
    if (global.keys < instance_number(obj_door_lock))
    {
        alarm[0] = 90
        ready = 1
    }
    else
        event_user(0)
}
if ((ready == 2) && instance_exists(obj_mario))
{
    speed = 7
    move_towards_point(obj_mario.x, (obj_mario.y + 16), speed)
}

