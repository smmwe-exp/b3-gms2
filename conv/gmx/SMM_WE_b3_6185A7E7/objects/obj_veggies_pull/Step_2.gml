if instance_exists(obj_mario)
{
    x = obj_mario.x
    if (ready == 1)
        y = obj_mario.y
    else if (y <= obj_mario.y)
    {
        speed = 0
        y = obj_mario.y
        ready = 1
    }
}
else
    speed = 0

