event_inherited()
if (convertirse == 1)
{
    if audio_is_playing(scr_snd_switchsong())
    {
        instance_activate_object(mysolid)
        with (instance_create(x, y, obj_coin))
            convertirse = 0
        instance_destroy()
    }
}
else if (convertirse == 0)
{
    if (!audio_is_playing(scr_snd_switchsong()))
    {
        instance_activate_object(mysolid)
        with (instance_create(x, y, obj_coin))
            convertirse = 1
        instance_destroy()
    }
}
if ((ready == 0) && ((global.powerup != 0) && ((global.yoshi == 0) && (instance_exists(obj_mario) && ((obj_mario.stompstyle == 1) && ((obj_mario.vspeed > 0) && place_meeting(x, (y - (obj_mario.vspeed * 2.5)), obj_mario)))))))
{
    audio_play_sound(snd_break, 0, false)
    with (obj_mario)
        event_user(1)
    instance_destroy()
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(45, 6)
        sprite_index = spr_shard
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(60, 6)
        sprite_index = spr_shard
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(120, 6)
        sprite_index = spr_shard
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        motion_set(135, 6)
        sprite_index = spr_shard
    }
}
if (global.apariencia == 2)
{
    if (outside_view() && ((image_speed == 0) && (image_index == 0)))
        event_user(10)
}
else if outside_view()
    event_user(10)

