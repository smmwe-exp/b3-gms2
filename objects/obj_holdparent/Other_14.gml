var semisolid, solidpow, solidthwomp, solidmuncher, solidpinchos, lava_lift, check, conveyor, col_muncher, col_cannon, col_pow, col_pswith, col_bullet, col_pswitch;
if (vspeed >= 0)
{
    semisolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    solidpow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0)
    solidthwomp = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp, 0, 0)
    solidmuncher = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_muncher, 0, 0)
    solidpinchos = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0)
    if (semisolid && ((bbox_bottom < (semisolid.yprevious + 5)) && ((obj_levelmanager.editor == 0) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0)))))
        y = (semisolid.bbox_top - 16)
    if (solidmuncher && ((bbox_bottom < (solidmuncher.yprevious + 5)) && ((obj_levelmanager.editor == 0) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0)))))
        y = (solidmuncher.bbox_top - 16)
    if (solidpinchos && ((bbox_bottom < (solidpinchos.yprevious + 5)) && ((obj_levelmanager.editor == 0) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0)))))
        y = (solidpinchos.bbox_top - 16)
    if (solidpow && ((bbox_bottom < (solidpow.yprevious + 5)) && ((obj_levelmanager.editor == 0) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0)))))
        y = (solidpow.bbox_top - 16)
    if (solidthwomp && ((bbox_bottom < (solidthwomp.yprevious + 5)) && ((obj_levelmanager.editor == 0) && (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0)))))
        y = (solidthwomp.bbox_top - 16)
}
if (collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0) && ((!collision_rectangle((x - 1), (bbox_bottom - 4), (x + 1), (bbox_bottom - 4), obj_slopeparent, 1, 0)) && (vspeed == 0)))
{
    if (!collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 5), obj_solidtop, 0, 0))
        y += 4
}
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_muncher, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 0))) || collision_rectangle((x - 1), bbox_bottom, (x + 1), (bbox_bottom + 4), obj_slopeparent, 1, 0))))))
{
    gravity = 0
    if (bouncy == 1)
    {
        if (vspeed > 2)
            vspeed = 1
        if (vspeed > 0.3)
            vspeed = ((-vspeed) / 2)
        else
        {
            vspeed = 0
            bouncy = 0
        }
    }
    else if (vspeed > 0)
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
    gravity = 0.15
    if (vspeed > 4)
        vspeed = 4
}
else if (swimming == 1)
{
    gravity = 0.03
    if (vspeed > 0.5)
        vspeed = 0.5
}
if ((vspeed < 0) && (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_solid, 1, 0) || (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_onewaygate_bottom, 1, 0) || (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_pinchos, 1, 0) || (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_muncher, 1, 0) || (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_cannon, 1, 0) || (collision_rectangle((bbox_left + 1), (bbox_top - 1), (bbox_right - 1), bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_thwomp, 1, 0))))))))
{
    while collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_solid, 1, 0)
        y++
    vspeed = 0
    gravity = 0
}
lava_lift = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 2), obj_solidtop, 0, 0)
if (lava_lift && ((y < (lava_lift.y - 12)) && (vspeed >= 0)))
{
    check = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0)
    if (check && (check != lava_lift))
        exit
    if (lava_lift.vspeed == 0)
        y = ceil((lava_lift.bbox_top - 16))
    else
        y = ceil((lava_lift.bbox_top - (16 - vspeed)))
    if (((lava_lift.hspeed > 0) && (!collision_rectangle((bbox_right + lava_lift.hspeed), bbox_top, (bbox_right + lava_lift.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle((bbox_right + lava_lift.hspeed), bbox_top, (bbox_right + lava_lift.hspeed), (bbox_bottom - 1), obj_pinchos, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle((bbox_right + lava_lift.hspeed), bbox_top, (bbox_right + lava_lift.hspeed), (bbox_bottom - 1), obj_cannon, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle((bbox_right + lava_lift.hspeed), bbox_top, (bbox_right + lava_lift.hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))) || (((lava_lift.hspeed > 0) && (!collision_rectangle((bbox_right + lava_lift.hspeed), bbox_top, (bbox_right + lava_lift.hspeed), (bbox_bottom - 1), obj_muncher, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle((bbox_left + lava_lift.hspeed), bbox_top, (bbox_left + lava_lift.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle((bbox_left + lava_lift.hspeed), bbox_top, (bbox_left + lava_lift.hspeed), (bbox_bottom - 1), obj_pinchos, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle((bbox_left + lava_lift.hspeed), bbox_top, (bbox_left + lava_lift.hspeed), (bbox_bottom - 1), obj_cannon, 0, 0))) || (((lava_lift.hspeed < 0) && (!collision_rectangle((bbox_left + lava_lift.hspeed), bbox_top, (bbox_left + lava_lift.hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))) || ((lava_lift.hspeed < 0) && (!collision_rectangle((bbox_left + lava_lift.hspeed), bbox_top, (bbox_left + lava_lift.hspeed), (bbox_bottom - 1), obj_muncher, 0, 0))))))))))))
        x += lava_lift.hspeed
    if (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 0, 0) || (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_onewaygate_left, 0, 0) || (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_pinchos, 0, 0) || (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_muncher, 0, 0) || (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_cannon, 0, 0) || collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_bullebill_base, 0, 0))))))
        x--
    else if (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 0, 0) || (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_onewaygate_right, 0, 0) || (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_pinchos, 0, 0) || (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_muncher, 0, 0) || (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_cannon, 0, 0) || collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_bullebill_base, 0, 0))))))
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
        if (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 1, 0) && (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_pinchos, 1, 0) && (collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 1, 0) && (col_muncher && ((col_muncher.id != id) && (col_cannon && ((col_cannon.id != id) && (col_pow && ((col_pow.id != id) && (col_pswith && ((col_pswith.id != id) && (col_bullet && (col_bullet.id != id)))))))))))))
        {
        }
        else
            x -= conveyor.image_speed
    }
    else if (conveyor.image_speed < 0)
    {
        col_muncher = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 1, 0)
        col_cannon = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_cannon, 1, 0)
        col_pow = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
        col_pswitch = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pswitch, 1, 0)
        col_bullet = collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)
        if (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0) && (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 1, 0) && (collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0) && (col_muncher && ((col_muncher.id != id) && (col_cannon && ((col_cannon.id != id) && (col_pow && ((col_pow.id != id) && (col_pswitch && ((col_pswitch.id != id) && (col_bullet && (col_bullet.id != id)))))))))))))
        {
        }
        else
            x -= conveyor.image_speed
    }
}

