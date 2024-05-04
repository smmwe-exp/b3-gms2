var pow_right, pow_left, col_one_left, col_one_right;
pow_right = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_block_pow_hold, 0, 0)
pow_left = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 0, 0)
if (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_solid, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_enemyparent_held, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_enemyparent_held, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_muncher, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_muncher, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_pswitch, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_pswitch, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_pinchos, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_pinchos, 0, 0)) || (((hspeed > 0) && (pow_right && (pow_right.held == 0))) || (((hspeed < 0) && (pow_left && (pow_left.held == 0))) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_cannon, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_cannon, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)) || ((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)))))))))))))))))))
{
    col_one_left = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)
    col_one_right = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)
    if ((hspeed > 0) && col_one_left)
    {
        if (!audio_is_playing(snd_oneway))
            audio_play_sound(snd_oneway, 0, false)
        with (col_one_left)
            rot = 1
    }
    if ((hspeed < 0) && col_one_right)
    {
        if (!audio_is_playing(snd_oneway))
            audio_play_sound(snd_oneway, 0, false)
        with (col_one_right)
            rot = 1
    }
    if ((object_index == obj_galoomba_hold) || (object_index == obj_bobomb_hold))
        direct = (-direct)
    if (object_index == obj_parcarry)
        hspeed = 0
    else
        hspeed = (-hspeed)
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_solid, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_block_pow_hold, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_muncher, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 1, 0)
        x++
    while collision_rectangle(bbox_right, (bbox_top + 4), bbox_right, (bbox_bottom - 4), obj_onewaygate_left, 1, 0)
        x--
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0)
        x++
}

