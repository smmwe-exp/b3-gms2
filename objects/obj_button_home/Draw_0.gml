if (room == rm_title)
{
    if (sprite_index == spr_buttons_DSM_menu)
    {
        draw_sprite(sprite_index, image_index, (__view_get( e__VW.XView, 0 ) + 112), (__view_get( e__VW.YView, 0 ) + 108))
        if (effect_hover == 1)
            draw_sprite(spr_button_home_select, 0, (__view_get( e__VW.XView, 0 ) + 112), (__view_get( e__VW.YView, 0 ) + 108))
    }
    else if ((sprite_index == spr_buttons_plays) && (image_index == 1))
    {
        draw_sprite(sprite_index, image_index, (__view_get( e__VW.XView, 0 ) + 112), (__view_get( e__VW.YView, 0 ) + 141))
        if (effect_hover == 1)
            draw_sprite(spr_button_home_select, 0, (__view_get( e__VW.XView, 0 ) + 112), (__view_get( e__VW.YView, 0 ) + 141))
    }
    else if (sprite_index == spr_buttons_guardabot_menu)
    {
        draw_sprite(sprite_index, image_index, (__view_get( e__VW.XView, 0 ) + 112), (__view_get( e__VW.YView, 0 ) + 174))
        if (effect_hover == 1)
            draw_sprite(spr_button_home_select, 0, (__view_get( e__VW.XView, 0 ) + 112), (__view_get( e__VW.YView, 0 ) + 174))
    }
}
else
{
    draw_self()
    if (effect_hover == 1)
        draw_sprite(spr_button_home_select, 0, x, y)
}

