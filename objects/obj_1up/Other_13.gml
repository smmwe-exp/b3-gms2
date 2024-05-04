var col_one_left, col_one_right;
if ((global.modo_noche == 1) && (global.bg_level == "ground"))
{
    if (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_solid, 0, 0)) || (((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_solid, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_bullebill_base, 0, 0)) || (((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_bullebill_base, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_block_pow_hold, 0, 0)) || (((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_block_pow_hold, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_muncher, 0, 0)) || (((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_muncher, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_pinchos, 0, 0)) || (((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_pinchos, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_spring_land, 0, 0)) || (((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_spring_land, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_enemyparent_held, 0, 0)) || (((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_enemyparent_held, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_cannon, 0, 0)) || (((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_cannon, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_estalactita, 0, 0)) || (((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_estalactita, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_estalactita2, 0, 0)) || (((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_estalactita2, 0, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left + (hspeed * 2)), (bbox_top + 4), (bbox_left + (hspeed * 2)), (bbox_bottom - 1), obj_thwomp, 0, 0)) || (((hspeed > 0) && collision_rectangle((bbox_right + (hspeed * 2)), (bbox_top + 4), (bbox_right + (hspeed * 2)), (bbox_bottom - 1), obj_thwomp, 0, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)) || ((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)))))))))))))))))))))))))
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
        if ((delay == 0) && (gravity == 0))
        {
            if ((global.bg_level == "underwater") || (((global.modo_noche == 1) && (global.bg_level == "sky")) || ((global.modo_noche == 1) && (global.bg_level == "airship"))))
            {
                vspeed = -2.4
                audio_stop_sound(snd_rotten)
                audio_play_sound(snd_rotten, 0, false)
            }
            else
            {
                vspeed = -4.8
                audio_stop_sound(snd_rotten)
                audio_play_sound(snd_rotten, 0, false)
            }
            delay = 6
            y--
        }
    }
    if ((hspeed < 0) && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x++
    if ((hspeed > 0) && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_solid, 0, 0))
        x--
    if ((hspeed < 0) && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))
        x++
    if ((hspeed > 0) && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_bullebill_base, 0, 0))
        x--
    if ((hspeed < 0) && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_block_pow_hold, 0, 0))
        x++
    if ((hspeed > 0) && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_block_pow_hold, 0, 0))
        x--
    if ((hspeed < 0) && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_muncher, 0, 0))
        x++
    if ((hspeed > 0) && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_muncher, 0, 0))
        x--
    if ((hspeed < 0) && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_pinchos, 0, 0))
        x++
    if ((hspeed > 0) && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_pinchos, 0, 0))
        x--
    if ((hspeed < 0) && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_thwomp, 0, 0))
        x++
    if ((hspeed > 0) && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_thwomp, 0, 0))
        x--
    if ((hspeed < 0) && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_cannon, 0, 0))
        x++
    if ((hspeed > 0) && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_cannon, 0, 0))
        x--
    if ((hspeed < 0) && collision_rectangle((bbox_left + hspeed), (bbox_top + 4), (bbox_left + hspeed), (bbox_bottom - 1), obj_onewaygate_right, 0, 0))
        x++
    if ((hspeed > 0) && collision_rectangle((bbox_right + hspeed), (bbox_top + 4), (bbox_right + hspeed), (bbox_bottom - 1), obj_onewaygate_left, 0, 0))
        x--
}
else
    event_inherited()

