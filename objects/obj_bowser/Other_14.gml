var solidtop, solidblock, solidpow, solidthwomp, solidmuncher, solidpinchos, solidthwomp_big, solidoneway, oneway, oneway2, col_phy, col_muncher, col_pow, col_platfall;
if (vspeed >= 0)
{
    solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    solidblock = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_flipblock, 0, 0)
    solidpow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_block_pow_hold, 0, 0)
    solidthwomp = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp, 0, 0)
    solidmuncher = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_muncher, 0, 0)
    solidpinchos = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0)
    solidthwomp_big = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_thwomp_big, 0, 0)
    solidoneway = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + vspeed), obj_onewaygate, 0, 0)
    if (solidblock && (aplastar2 == 1))
    {
    }
    else if (solidtop && ((bbox_bottom < (solidtop.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidtop.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidmuncher && ((bbox_bottom < (solidmuncher.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidmuncher.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidpinchos && ((bbox_bottom < (solidpinchos.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidpinchos.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidthwomp && ((bbox_bottom < (solidthwomp.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidthwomp.y + floor(((y - bbox_bottom) - 16)))
    if (solidthwomp_big && ((bbox_bottom < (solidthwomp_big.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidthwomp_big.y + floor(((y - bbox_bottom) - 32)))
    if (solidpow && ((bbox_bottom < (solidpow.yprevious + 5)) && (obj_levelmanager.editor == 0)))
        y = (solidpow.y + floor(((y - bbox_bottom) - 0.9)))
    if (solidoneway && ((bbox_bottom < (solidoneway.yprevious + 5)) && ((obj_levelmanager.editor == 0) && (solidoneway.c_direct == 3))))
        y = (solidoneway.y + floor(((y - bbox_bottom) - 0.9)))
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
oneway = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onewaygate, 0, 0)
oneway2 = (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_onewaygate, 0, 0))
if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_thwomp, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_thwomp, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_muncher, 0, 0))) || ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0))) || ((oneway && ((oneway.c_direct == 3) && (oneway2 && (oneway2.c_direct == 3)))) || collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_slopeparent, 1, 0)))))))
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
    if (aplastar2 == 1)
    {
        gravity = 0.5
        if (vspeed > 5)
            vspeed = 5
    }
    else
    {
        if (global.apariencia == 1)
        {
            gravity = 0.2
            if (vspeed > 2.2)
                vspeed = 2.2
        }
        if (global.apariencia == 2)
        {
            gravity = 0.2
            if (vspeed > 3.2)
                vspeed = 3.2
        }
    }
}
else if (swimming == 1)
{
    if (aplastar2 == 1)
    {
        gravity = 0.2
        if (vspeed > 3)
            vspeed = 3
    }
    else
    {
        gravity = 0.1
        if (vspeed > 1.2)
            vspeed = 1.2
    }
}
lconv = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_cinta, 0, 0)
if (lconv && ((lconv.image_speed != 0) && ((lconv.direct == 0) && (obj_levelmanager.editor == 0))))
{
    if (lconv.velocity == 1.3)
    {
        if (!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 1, 0))
        {
            x -= 1
            if (lconv.bbox_left == bbox_right)
                x -= 4
        }
    }
    else if (!collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 1, 0))
        x -= 2.3
}
else if (lconv && ((lconv.image_speed != 0) && ((lconv.direct == 1) && (obj_levelmanager.editor == 0))))
{
    if (lconv.velocity == 1.3)
    {
        if (!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 1, 0))
            x += 1
    }
    else if (!collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 1), obj_solid, 1, 0))
        x += 2.3
}
col_phy = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_platform_moving, 0, 0)
if (col_phy && ((y < (col_phy.y - 10)) && (obj_levelmanager.editor == 0)))
{
    y = ceil((col_phy.bbox_top - 14))
    if (((col_phy.hspeed > 0) && (!collision_rectangle((bbox_right + col_phy.hspeed), bbox_top, (bbox_right + col_phy.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))) || ((col_phy.hspeed < 0) && (!collision_rectangle((bbox_left + col_phy.hspeed), bbox_top, (bbox_left + col_phy.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))))
        x += col_phy.hspeed
}
col_muncher = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0)
if (col_muncher && ((y < (col_muncher.y - 10)) && (obj_levelmanager.editor == 0)))
{
    y = ceil((col_muncher.bbox_top - 14))
    if (((col_muncher.hspeed > 0) && (!collision_rectangle((bbox_right + col_muncher.hspeed), bbox_top, (bbox_right + col_muncher.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))) || ((col_muncher.hspeed < 0) && (!collision_rectangle((bbox_left + col_muncher.hspeed), bbox_top, (bbox_left + col_muncher.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))))
        x += col_muncher.hspeed
}
col_pow = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0)
if (col_pow && ((y < (col_pow.y - 10)) && (obj_levelmanager.editor == 0)))
{
    y = ceil((col_pow.bbox_top - 14))
    if (((col_pow.hspeed > 0) && (!collision_rectangle((bbox_right + col_pow.hspeed), bbox_top, (bbox_right + col_pow.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))) || ((col_pow.hspeed < 0) && (!collision_rectangle((bbox_left + col_pow.hspeed), bbox_top, (bbox_left + col_pow.hspeed), (bbox_bottom - 1), obj_solid, 0, 0))))
        x += col_pow.hspeed
}
col_platfall = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 1), obj_platform_falling, 0, 0)
if (col_platfall && ((!collision_rectangle(bbox_left, (col_platfall.bbox_top - 5), bbox_right, (col_platfall.bbox_top + 1), obj_solidtop, 0, 1)) && ((y < (col_platfall.y - 10)) && ((col_phy.vspeed == 0) && (obj_levelmanager.editor == 0)))))
    y = ceil((col_platfall.bbox_top - 15))
if (((vspeed < 0) && collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0)) || ((vspeed < 0) && collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
{
    while collision_rectangle((bbox_left + 1), bbox_top, (bbox_right - 1), bbox_top, obj_solid, 1, 0)
        y++
    vspeed = 0
    if ((aplastar == 1) && (aplastar2 == 0))
    {
        hspeed = 0
        vspeed = 0
    }
}
if ((vspeed == 0) && (obj_levelmanager.editor == 0))
{
    while collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)
        y--
}
if (((bbox_top - 16) > room_height) && (obj_levelmanager.editor == 0))
    instance_destroy()

