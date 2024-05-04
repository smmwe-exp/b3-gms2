if (wings == 1)
{
    if (direct == 1)
    {
        with (instance_create((x - 9), (y + 9), obj_wings_dead))
            direct = 1
    }
    else
    {
        with (instance_create((x + 9), (y + 9), obj_wings_dead))
            direct = -1
    }
}
if (obj_levelmanager.editor == 0)
{
    if (ball != obj_lighting)
    {
        if instance_exists(ball)
        {
            if (global.bg_level == "snow")
            {
                with (ball)
                {
                    visible = 1
                    vspeed = -1.5
                    hspeed = 0
                    alarm[2] = 4
                    y--
                }
            }
            else
            {
                with (ball)
                {
                    if (global.apariencia != 2)
                        fisica = 1
                    visible = 1
                    vspeed = -1.5
                    hspeed = 0
                    alarm[0] = 15
                    direct_spike = other.direct
                    ready = 1
                    y--
                }
            }
        }
    }
}

