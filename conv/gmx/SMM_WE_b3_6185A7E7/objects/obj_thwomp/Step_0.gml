if (ready < 2)
    event_user(4)
if (collision_rectangle(bbox_left, (bbox_top + 2), bbox_right, (bbox_bottom - 1), obj_lava_water, 0, 0) && (global.apariencia != 0))
{
    if (salpi == 0)
    {
        salpicadura = 1
        salpi = 1
        alarm[1] = 1
    }
}
else
{
    salpi = 0
    salpicadura = 0
}
if (direct_t == 1)
{
    if ((ready == 0) && (instance_exists(obj_mario) && ((obj_mario.x > (bbox_left - 32)) && ((obj_mario.x < (bbox_right + 32)) && (y < obj_mario.y)))))
    {
        if (collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, (bbox_bottom + 2), obj_solidtop, 0, 0) || (collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, (bbox_bottom + 2), obj_spring, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, (bbox_bottom + 2), obj_thwomp, 0, 0)))
        {
            vspeed = -1.5
            ready = 1
        }
        else
            ready = 1
    }
    else if (ready == 1)
    {
        if (gravity == 0)
        {
            audio_play_sound(scr_snd_thwomp(), 0, false)
            ready = 2
            vspeed = 0
            instance_create((bbox_left - 8), (bbox_bottom - 8), obj_smoke)
            instance_create((bbox_right - 8), (bbox_bottom - 8), obj_smoke)
            alarm[0] = 60
        }
    }
    else if ((ready == 3) && (y < (ystart + 1)))
    {
        ready = 0
        vspeed = 0
        y = ystart
    }
}

