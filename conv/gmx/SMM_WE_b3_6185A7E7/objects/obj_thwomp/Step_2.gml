if ((direct_t == 1) && instance_exists(obj_mario))
{
    if (ready == 0)
    {
        if ((obj_mario.x > (bbox_left - 48)) && ((obj_mario.x < (bbox_left - 32)) && (obj_mario.y > (bbox_top - 1))))
        {
            image_index = 1
            direct = 1
        }
        else if ((obj_mario.x < (bbox_right + 48)) && ((obj_mario.x > (bbox_right + 32)) && (obj_mario.y > (bbox_top - 1))))
        {
            image_index = 1
            direct = -1
        }
        else
        {
            image_index = 0
            direct = 1
        }
    }
    else if (ready == 1)
    {
        image_index = 2
        direct = 1
    }
}

