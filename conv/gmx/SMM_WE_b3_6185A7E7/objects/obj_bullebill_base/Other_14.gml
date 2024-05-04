var solidtop, solidpow, solidthwomp, solidpinchos, solidmunchers, lava_lift, check, conveyor, col_muncher, col_cannon, col_pow, col_pswith, col_bullet, col_pswitch;
if (vspeed >= 0)
{
    solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    solidpow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0)
    solidthwomp = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp, 0, 0)
    solidpinchos = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0)
    solidmunchers = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_muncher, 0, 0)
    if (solidtop && ((bbox_bottom < (solidtop.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidtop.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidpinchos && ((bbox_bottom < (solidpinchos.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidpinchos.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidmunchers && ((bbox_bottom < (solidmunchers.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidmunchers.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidthwomp && ((bbox_bottom < (solidthwomp.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidthwomp.y + floor(((y - bbox_bottom) - 16)))
    if (solidpow && ((bbox_bottom < (solidpow.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidpow.y + floor(((y - bbox_bottom) - 0.9)))
    if (vspeed > 4)
        vspeed = 4
}
if (collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 4), obj_slopeparent, 1, 0) && ((!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_slopeparent, 1, 0)) && (vspeed == 0)))
    y += 4
if (collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, bbox_bottom, obj_slopeparent, 1, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 8), bbox_right, (bbox_bottom - 8), obj_slopeparent, 1, 0)))
{
    while collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, bbox_bottom, obj_slopeparent, 1, 0)
        y--
}
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_muncher, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0))) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0))))))
{
    gravity = 0
    if (vspeed > 0)
        vspeed = 0
}
else if (modo_lava == 1)
{
    hspeed = 0
    gravity = 0.02
    if (vspeed > 0.03)
        vspeed = 0.03
}
else if (!swimming)
{
    gravity = 0.2
    if (vspeed > 4)
        vspeed = 4
}
else if (swimming == 1)
{
    gravity = 0.1
    if (vspeed > 0.4)
        vspeed = 0.4
}
if ((vspeed < 0) && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_pinchos, 1, 0) || (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_cannon, 1, 0) || (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_muncher, 1, 0))))))
    vspeed = 0
if (((bbox_top - 16) > room_height) && (obj_levelmanager.editor == 0))
    instance_destroy()
lava_lift = collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom + 4), obj_solidtop, 0, 0)
if (lava_lift && (vspeed >= 0))
{
    check = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0)
    if (check && (check != lava_lift))
        exit
    y = (lava_lift.y + floor(((y - bbox_bottom) - 0.9)))
    if (((lava_lift.hspeed > 0) && (!collision_rectangle(((bbox_right + lava_lift.hspeed) + 1), bbox_top, ((bbox_right + lava_lift.hspeed) + 1), (bbox_bottom - 1), obj_solid, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle(((bbox_right + lava_lift.hspeed) + 1), bbox_top, ((bbox_right + lava_lift.hspeed) + 1), (bbox_bottom - 1), obj_pinchos, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle(((bbox_right + lava_lift.hspeed) + 1), bbox_top, ((bbox_right + lava_lift.hspeed) + 1), (bbox_bottom - 1), obj_cannon, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle(((bbox_right + lava_lift.hspeed) + 1), bbox_top, ((bbox_right + lava_lift.hspeed) + 1), (bbox_bottom - 1), obj_bullebill_base, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle((bbox_right + lava_lift.hspeed), bbox_top, ((bbox_right + lava_lift.hspeed) + 1), (bbox_bottom - 1), obj_muncher, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle(((bbox_left + lava_lift.hspeed) - 1), bbox_top, ((bbox_left + lava_lift.hspeed) - 1), (bbox_bottom - 1), obj_solid, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle(((bbox_left + lava_lift.hspeed) - 1), bbox_top, ((bbox_left + lava_lift.hspeed) - 1), (bbox_bottom - 1), obj_pinchos, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle(((bbox_left + lava_lift.hspeed) - 1), bbox_top, ((bbox_left + lava_lift.hspeed) - 1), (bbox_bottom - 1), obj_cannon, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle(((bbox_left + lava_lift.hspeed) - 1), bbox_top, ((bbox_left + lava_lift.hspeed) - 1), (bbox_bottom - 1), obj_bullebill_base, 0, 0))) || ((lava_lift.hspeed < 0) && (!collision_rectangle(((bbox_left + lava_lift.hspeed) - 1), bbox_top, ((bbox_left + lava_lift.hspeed) - 1), (bbox_bottom - 1), obj_muncher, 0, 0))))))))))))
        x += lava_lift.hspeed
    if (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 0, 0) || (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_onewaygate_left, 0, 0) || (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_pinchos, 0, 0) || collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_muncher, 0, 0))))
        x--
    else if (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 0, 0) || (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_onewaygate_right, 0, 0) || (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_pinchos, 0, 0) || collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_muncher, 0, 0))))
        x++
}
conveyor = collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom + 1), obj_cinta_parent, 0, 0)
if (conveyor && (conveyor.image_speed != 0))
{
    if (conveyor.image_speed > 0)
    {
        col_muncher = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_muncher, 1, 0)
        col_cannon = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_cannon, 1, 0)
        col_pow = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
        col_pswith = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_pswitch, 1, 0)
        col_bullet = collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 1, 0)
        if (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 1, 0) || (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_pinchos, 1, 0) || (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 1, 0) || ((col_muncher && (col_muncher.id != id)) || ((col_cannon && (col_cannon.id != id)) || ((col_pow && (col_pow.id != id)) || ((col_pswith && (col_pswith.id != id)) || (col_bullet && (col_bullet.id != id)))))))))
        {
        }
        else
        {
            x -= conveyor.image_speed
            if collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_mario, 1, 0)
            {
                if instance_exists(obj_mario)
                    obj_mario.x -= conveyor.image_speed
            }
        }
    }
    else if (conveyor.image_speed < 0)
    {
        col_muncher = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 1, 0)
        col_cannon = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_cannon, 1, 0)
        col_pow = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
        col_pswitch = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pswitch, 1, 0)
        col_bullet = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
        if (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0) || (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 1, 0) || (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0) || ((col_muncher && (col_muncher.id != id)) || ((col_cannon && (col_cannon.id != id)) || ((col_pow && (col_pow.id != id)) || ((col_pswitch && (col_pswitch.id != id)) || (col_bullet && (col_bullet.id != id)))))))))
        {
        }
        else
        {
            x -= conveyor.image_speed
            if collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_mario, 1, 0)
            {
                if instance_exists(obj_mario)
                    obj_mario.x -= conveyor.image_speed
            }
        }
    }
}

