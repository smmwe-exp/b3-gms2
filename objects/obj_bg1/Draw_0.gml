if ((sprite_index == spr_cards_entorno) && ((image_index == 10) || ((image_index == 11) || (image_index == 12))))
{
    draw_sprite_ext(spr_cards_entorno_bg, 0, (__view_get( e__VW.XView, 0 ) + x_pos), (__view_get( e__VW.YView, 0 ) + y_pos), 1, 1, 0, c_white, 0.5)
    draw_sprite_ext(sprite_index, image_index, (__view_get( e__VW.XView, 0 ) + x_pos), (__view_get( e__VW.YView, 0 ) + y_pos), 1, 1, 0, c_white, 0.5)
}
else
{
    draw_sprite(spr_cards_entorno_bg, active, (__view_get( e__VW.XView, 0 ) + x_pos), (__view_get( e__VW.YView, 0 ) + y_pos))
    draw_sprite_ext(sprite_index, image_index, (__view_get( e__VW.XView, 0 ) + x_pos), (__view_get( e__VW.YView, 0 ) + y_pos), 1, 1, 0, c_white, 1)
}
if (active == 1)
    draw_sprite(spr_card_entorno_hover, 0, (__view_get( e__VW.XView, 0 ) + x_pos), (__view_get( e__VW.YView, 0 ) + y_pos))

