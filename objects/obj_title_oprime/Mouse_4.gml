audio_play_sound(snd_back, 0, false)
if (sprite_index == spr_back_button_white)
{
    if instance_exists(obj_button_home)
    {
        with (obj_button_home)
            instance_destroy()
        instance_create((__view_get( e__VW.XView, 0 ) + 135), (__view_get( e__VW.YView, 0 ) + 130), obj_editor_screen)
        instance_create((__view_get( e__VW.XView, 0 ) + 197), (__view_get( e__VW.YView, 0 ) + 130), obj_play_screen)
    }
    else
    {
        sprite_index = spr_title_oprime
        image_speed = 0
        image_index = 1
        alarm[0] = 180
        if instance_exists(obj_editor_screen)
        {
            with (obj_editor_screen)
                instance_destroy()
        }
        if instance_exists(obj_play_screen)
        {
            with (obj_play_screen)
                instance_destroy()
        }
    }
}
else
{
    sprite_index = spr_back_button_white
    image_speed = 0
    image_index = 0
    alarm[0] = -1
    alarm[1] = -1
    instance_create((__view_get( e__VW.XView, 0 ) + 135), (__view_get( e__VW.YView, 0 ) + 130), obj_editor_screen)
    instance_create((__view_get( e__VW.XView, 0 ) + 197), (__view_get( e__VW.YView, 0 ) + 130), obj_play_screen)
}

