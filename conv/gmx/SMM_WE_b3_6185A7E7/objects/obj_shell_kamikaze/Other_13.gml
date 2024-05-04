if (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_solid, 1, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_muncher, 1, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_pinchos, 1, 0)) || (((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_bullebill_base, 1, 0)) || ((hspeed < 0) && collision_rectangle((bbox_left - 1), (bbox_top + 4), bbox_left, (bbox_bottom - 4), obj_thwomp, 1, 0))))))
{
    hspeed = 3.5
    if (!outside_view())
        audio_play_sound(snd_bump, 0, false)
    hardness = 100
    alarm[0] = 2
    instance_create((x - 8), y, obj_blockbumper)
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 1), obj_solid, 0, 0)
        x++
}
else if (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_solid, 1, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_muncher, 1, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_pinchos, 1, 0)) || (((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_bullebill_base, 1, 0)) || ((hspeed > 0) && collision_rectangle(bbox_right, (bbox_top + 4), (bbox_right + 1), (bbox_bottom - 4), obj_thwomp, 1, 0))))))
{
    hspeed = -3.5
    if (!outside_view())
        audio_play_sound(snd_bump, 0, false)
    hardness = 100
    alarm[0] = 2
    instance_create((x + 8), y, obj_blockbumper)
    while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_solid, 0, 0)
        x--
}

