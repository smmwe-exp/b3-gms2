if (big_jump == 0)
{
    if instance_exists(obj_mario)
    {
        if (((obj_mario.x < x) && (direct == -1)) || ((obj_mario.x > x) && (direct == 1)))
        {
            alarm[0] = 1
            alarm[1] = 10
        }
        else if (((obj_mario.x < x) && (direct == 1)) || ((obj_mario.x > x) && (direct == -1)))
            alarm[2] = 1
    }
    else
        alarm[10] = 4
}
else
    alarm[3] = 2

