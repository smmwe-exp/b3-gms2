if (instance_exists(obj_mario) && ((direct_x == 0) && (direct_y == 0)))
{
    if (x > obj_mario.x)
        direct_x = 1
    else
        direct_x = -1
    if (y > obj_mario.y)
        direct_y = 1
    else
        direct_y = -1
    speed = fallow_speed
}
if ((direct_x != 0) && (direct_y != 0))
{
    if instance_exists(obj_mario)
    {
        move_towards_point(obj_mario.x, obj_mario.y, speed)
        if (((direct_x == 1) && (x < obj_mario.x)) || ((direct_x == -1) && (x > obj_mario.x)))
        {
            hspeed = 0
            x = obj_mario.x
        }
        if (((direct_y == 1) && (y < obj_mario.y)) || ((direct_y == -1) && (y > obj_mario.y)))
        {
            vspeed = 0
            y = obj_mario.y
        }
        if ((hspeed == 0) || (vspeed == 0))
        {
            if (fallw == 1)
            {
                fallw = 0
                fallow_speed = 7
                speed = 0
                direct_x = 0
                direct_y = 0
            }
        }
    }
}

