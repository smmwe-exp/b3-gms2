var water;
if held
{
    if keyboard_check_pressed(global.lanzar_agarrar)
    {
        if instance_exists(obj_mario)
        {
            with (obj_mario)
            {
                holding = 0
                event_user(3)
            }
            if keyboard_check(global.upkey)
            {
                vspeed = -6
                gravity = 0.2
                hspeed = (obj_playerparent.xspeed / 2)
            }
            else
            {
                vspeed = 0.1
                gravity = 0.2
                if (obj_playerparent.xscale == 1)
                    hspeed = (obj_playerparent.xspeed + 2.5)
                else
                    hspeed = (obj_playerparent.xspeed - 2.5)
            }
            held = 0
        }
    }
}
else
{
    if (!swimming)
    {
        gravity = 0.2
        if (vspeed > 4)
            vspeed = 4
    }
    else
    {
        gravity = 0.05
        if (vspeed > 1)
            vspeed = 1
    }
    water = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0)
    if (water && (!swimming))
    {
        swimming = 1
        hspeed /= 2
        gravity = 0
        if (vspeed > 0)
            vspeed = 0
    }
    else if ((!water) && swimming)
    {
        swimming = 0
        hspeed *= 2
    }
}

