var solidtop, solidpow, solidthwomp, solidmuncher, solidpinchos, lava_lift, check, conveyor;
if (vspeed >= 0)
{
    solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    solidpow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0)
    solidthwomp = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp, 0, 0)
    solidmuncher = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_muncher, 0, 0)
    solidpinchos = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0)
    if (solidtop && ((bbox_bottom < (solidtop.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidtop.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidmuncher && ((bbox_bottom < (solidmuncher.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidmuncher.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidpinchos && ((bbox_bottom < (solidpinchos.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidpinchos.y + floor(((y - bbox_bottom) - 0.9)))
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
else if ((y >= (room_height - 24)) && ((__background_get( e__BG.Index, 0 ) == scr_bg_castle()) && ((obj_levelmanager.editor == 0) && (object_index != obj_yoshifire))))
{
    hspeed = 0
    gravity = 0.02
    if (vspeed > 0.1)
        vspeed = 0.1
}
else if (!swimming)
{
    gravity = 0.4
    if (vspeed > 6)
        vspeed = 6
}
else if (swimming == 1)
{
    gravity = 0.2
    if (vspeed > 0.7)
        vspeed = 0.7
}
if (((vspeed < 0) && collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0)) || ((vspeed < 0) && collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
{
    while collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_solid, 1, 0)
        y++
    vspeed = 0
}
if (((bbox_top - 16) > room_height) && (obj_levelmanager.editor == 0))
    instance_destroy()
lava_lift = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 2), obj_solidtop, 0, 0)
if (lava_lift && ((y < (lava_lift.y - 12)) && (vspeed == 0)))
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
}
conveyor = collision_rectangle(bbox_left, bbox_top, bbox_right, (bbox_bottom + 1), obj_cinta_parent, 0, 0)
if (conveyor && (conveyor.image_speed != 0))
{
    if (conveyor.image_speed > 0)
    {
        if ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_pinchos, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_muncher, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_cannon, 1, 0)) && ((!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 1, 0)) && (!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 1, 0)))))))
            x -= conveyor.image_speed
    }
    else if (conveyor.image_speed < 0)
    {
        if ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_cannon, 1, 0)) && ((!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)) && (!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0)))))))
            x -= conveyor.image_speed
    }
}

