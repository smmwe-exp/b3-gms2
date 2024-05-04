var bombhold, bombhold2;
if (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_solid, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_helmet, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_helmet, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_thwomp, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_thwomp, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_muncher, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_muncher, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_pswitch, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_pswitch, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_pinchos, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_pinchos, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_cannon, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_cannon, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)) || ((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)))))))))))))))))))
{
    direct = (-direct)
    hspeed = 0
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_solid, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_helmet, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_helmet, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_muncher, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_onewaygate_left, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0)
        x++
}
bombhold = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_block_pow_hold, 0, 0)
bombhold2 = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 0, 0)
if ((hspeed > 0) && bombhold)
{
    direct = (-direct)
    hspeed = 0
    with (bombhold)
    {
        explode = 1
        event_user(6)
    }
}
if ((hspeed < 0) && bombhold2)
{
    direct = (-direct)
    hspeed = 0
    with (bombhold2)
    {
        explode = 1
        event_user(6)
    }
}

