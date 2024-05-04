if (cannon == 0)
{
    if (hspeed != 0)
    {
        direct = sign(hspeed)
        image_speed = 0.15
        if (holding == 0)
            sprite_index = scr_mariowalk()
        else
        {
            sprite_index = scr_mariohold()
            direct = (-direct)
        }
    }
    else
    {
        image_speed = 0
        image_index = 0
        sprite_index = scr_mariowarp()
    }
    if (collision_point(bbox_left, bbox_top, obj_solid, 1, 1) && (collision_point(bbox_right, bbox_top, obj_solid, 1, 1) && (collision_point(bbox_left, bbox_bottom, obj_solid, 1, 1) && collision_point(bbox_right, bbox_bottom, obj_solid, 1, 1))))
    {
        speed = 3
        visible = 0
    }
    else
    {
        if (speed == 3)
            audio_play_sound(snd_warp, 0, false)
        speed = 1
        visible = 1
    }
    if ((ready == 1) && (!place_meeting(x, y, obj_solid)))
        event_user(0)
}
else if ((cannon == 2) && (vspeed > 0))
    event_user(0)

