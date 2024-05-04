if ready
{
    if (color == 0)
    {
        with (instance_create((x - 1), (y + 16), obj_yoshi_abandon))
            vspeed = -1.5
    }
    else
    {
        with (instance_create((x - 1), (y + 16), obj_yoshi_abandon))
        {
            color = 1
            sprite_index = spr_yoshi_wait_red
            vspeed = -1.5
        }
    }
    instance_destroy()
}

