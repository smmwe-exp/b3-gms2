var check, check_solid, check_oneway, check_cannon, check_bullet, check_muncher;
if (wings == 1)
{
    if (!instance_exists(obj_deadmario))
        anim += 0.15
    if (ready == 0)
    {
        if (y > (ystart + 8))
        {
            if (vspeed < -0.2)
                vspeed = -0.2
            else
                vspeed -= 0.085
        }
        else if (y < (ystart - 8))
        {
            if (vspeed > 0.2)
                vspeed = 0.2
            else
                vspeed += 0.085
        }
    }
    else if (vspeed > 0.5)
        vspeed = 0.5
}
else if (vspeed > 3.5)
    vspeed = 3.5
if (outside_view() && ((y > (room_height + 64)) && (ready == 1)))
{
    ready = 2
    vspeed = 0
    gravity = 0
    visible = 0
    alarm[2] = 180
}
if instance_exists(obj_mario)
{
    check = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_solidtop, 0, 0)
    check_solid = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_solid, 1, 0)
    check_oneway = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_onewaygate_bottom, 1, 0)
    check_cannon = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_cannon, 1, 0)
    check_bullet = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_bullebill_base, 1, 0)
    check_muncher = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 2), obj_mario.bbox_right, obj_mario.bbox_top, obj_muncher, 1, 0)
    if ((check && (vspeed > 0)) || ((check && ((vspeed < 0) && (y > (obj_mario.y + 32)))) || ((check_solid || (check_oneway || (check_cannon || (check_bullet || check_muncher)))) && (vspeed < 0))))
        exit
    if (collision_rectangle(bbox_left, (bbox_top - 8), bbox_right, (bbox_top + 7), obj_mario, 0, 0) && ((obj_mario.y < (y - 28)) && (obj_mario.state < 2)))
    {
        if (ready == 0)
        {
            ready = 1
            alarm[1] = 15
        }
    }
    else
    {
        with (obj_mario)
            inplatform = 0
    }
}

