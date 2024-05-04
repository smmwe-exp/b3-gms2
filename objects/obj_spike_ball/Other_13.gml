var col_one_left, col_one_right, block_right, block_left, ice_right, ice_left, rock_right, rock_left, coin_right, coin_left;
if ((((hspeed < 0) && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_solid, 1, 0)) || (((hspeed < 0) && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 1, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_pinchos, 1, 0)) || (((hspeed < 0) && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_cannon, 1, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_cannon, 1, 0)) || (((hspeed < 0) && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 1, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_muncher, 1, 0)) || (((hspeed < 0) && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_thwomp, 1, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_thwomp, 1, 0)) || (((hspeed < 0) && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_bullebill_base, 1, 0)) || (((hspeed < 0) && collision_rectangle(((bbox_left - 1) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 1, 0)) || ((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_onewaygate_left, 1, 0))))))))))))))) && (ready == 1))
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
    block_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_blockparent, 1, 0)
    block_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_blockparent, 1, 0)
    ice_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_block_ice, 1, 0)
    ice_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_block_ice, 1, 0)
    rock_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_block_rock, 1, 0)
    rock_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_block_rock, 1, 0)
    coin_right = collision_rectangle(((bbox_left - 3) + hspeed), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_icecoin, 1, 0)
    coin_left = collision_rectangle(bbox_right, (bbox_top + 4), ((bbox_right + 1) + hspeed), (bbox_bottom - 4), obj_icecoin, 1, 0)
    if ((hspeed < 0) && ice_right)
    {
        with (ice_right)
            alarm[0] = 1
    }
    if ((hspeed > 0) && ice_left)
    {
        with (ice_left)
            alarm[0] = 1
    }
    if ((hspeed < 0) && rock_right)
    {
        with (rock_right)
            alarm[0] = 1
    }
    if ((hspeed > 0) && rock_left)
    {
        with (rock_left)
            alarm[0] = 1
    }
    if ((hspeed < 0) && coin_right)
    {
        with (coin_right)
            alarm[0] = 1
    }
    if ((hspeed > 0) && coin_left)
    {
        with (coin_left)
            alarm[0] = 1
    }
    if ((hspeed < 0) && (block_right && (block_right.ready == 0)))
    {
        if ((block_right.object_index == obj_flipblock) && (global.apariencia == 1))
        {
            with (block_right)
                alarm[2] = 1
        }
        else if (block_right.object_index == obj_onoffblock)
        {
            with (block_right)
                event_user(1)
        }
        else
        {
            with (block_right)
            {
                ready = 1
                vspeed = -2
                if (object_index == obj_noteblock)
                    alarm[0] = 7
                else
                    alarm[0] = 4
                event_user(0)
            }
        }
    }
    else if ((hspeed > 0) && (block_left && (block_left.ready == 0)))
    {
        if ((block_left.object_index == obj_flipblock) && (global.apariencia == 1))
        {
            with (block_left)
                alarm[2] = 1
        }
        else if (block_left.object_index == obj_onoffblock)
        {
            with (block_left)
                event_user(1)
        }
        else
        {
            with (block_left)
            {
                ready = 1
                vspeed = -2
                if (object_index == obj_noteblock)
                    alarm[0] = 7
                else
                    alarm[0] = 4
                event_user(0)
            }
        }
    }
    event_user(0)
}

