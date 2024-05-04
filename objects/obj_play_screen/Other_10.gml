if (!instance_exists(obj_button_home))
{
    with (instance_create((__view_get( e__VW.XView, 0 ) + 112), (__view_get( e__VW.YView, 0 ) + 108), obj_button_home))
    {
        sprite_index = spr_buttons_DSM_menu
        depth = -25
        alarm[0] = 15
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 112), (__view_get( e__VW.YView, 0 ) + 141), obj_button_home))
    {
        image_index = 1
        depth = -25
        alarm[0] = 15
    }
    with (instance_create((__view_get( e__VW.XView, 0 ) + 112), (__view_get( e__VW.YView, 0 ) + 174), obj_button_home))
    {
        sprite_index = spr_buttons_guardabot_menu
        image_index = 0
        depth = -25
        alarm[0] = 15
    }
}

