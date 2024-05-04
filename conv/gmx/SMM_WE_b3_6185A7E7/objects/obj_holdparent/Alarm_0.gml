if instance_exists(obj_mario)
{
    if (obj_mario.stompstyle == 1)
    {
        if (shake == 0)
        {
            x = ((obj_mario.x - 8) + 10)
            depth = -7
        }
        else if (shake == 1)
        {
            x = ((obj_mario.x - 8) + 2)
            depth = -7
        }
        else if (shake == 2)
        {
            x = ((obj_mario.x - 8) - 10)
            depth = -7
        }
        else if (shake == 3)
        {
            x = ((obj_mario.x - 8) - 2)
            depth = -10
        }
        else if (shake == 4)
        {
            x = ((obj_mario.x - 8) + 2)
            depth = -10
        }
        if (shake == 4)
            shake = 0
        else
            shake++
        alarm[0] = 1.6
    }
    else if (obj_mario.airspin == 1)
    {
        if (shake == 0)
        {
            x = ((obj_mario.x - 8) + 10)
            depth = -7
        }
        else if (shake == 1)
        {
            x = ((obj_mario.x - 8) - 2)
            depth = -7
        }
        else if (shake == 2)
        {
            x = (obj_mario.x - 8)
            depth = -7
        }
        else if (shake == 3)
        {
            x = ((obj_mario.x - 8) - 10)
            depth = -7
        }
        else if (shake == 4)
        {
            x = ((obj_mario.x - 8) - 2)
            depth = -7
        }
        else if (shake == 5)
        {
            x = (obj_mario.x - 8)
            depth = -10
        }
        else if (shake == 6)
        {
            x = ((obj_mario.x - 8) + 2)
            depth = -10
        }
        else if (shake == 7)
        {
            x = ((obj_mario.x - 8) + 10)
            depth = -10
        }
        if (shake == 7)
            shake = 0
        else
            shake++
        alarm[0] = 1.6
    }
}
else
    shake = 0

