if (room == rm_title)
{
    x = (__view_get( e__VW.XView, 0 ) + 112)
    if ((sprite_index == spr_buttons_plays) && (image_index == 0))
        y = (__view_get( e__VW.YView, 0 ) + 108)
    else if ((sprite_index == spr_buttons_plays) && (image_index == 1))
        y = (__view_get( e__VW.YView, 0 ) + 141)
    else if (sprite_index == spr_buttons_guardabot_menu)
        y = (__view_get( e__VW.YView, 0 ) + 174)
}

