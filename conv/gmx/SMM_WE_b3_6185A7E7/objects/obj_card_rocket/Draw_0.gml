draw_sprite(spr_rocket_draw, 0, (((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 26) + obj_cursor.anim_right), (__view_get( e__VW.YView, 0 ) + 184))
if (ready == 0)
    draw_sprite_ext(sprite_index, image_index, (((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 26) + obj_cursor.anim_right), (__view_get( e__VW.YView, 0 ) + 184), 1, 1, 0, c_white, 1)
else
    draw_sprite_ext(sprite_index, image_index, (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )), (__view_get( e__VW.YView, 0 ) + 216), 1, 1, 0, c_white, 1)
if (counter_draw == 1)
    draw_sprite(spr_rocket_counter, counter_anim, (__view_get( e__VW.XView, 0 ) + 192), (__view_get( e__VW.YView, 0 ) + 108))
if (effect_hover == 1)
    draw_sprite(spr_button_right_hover, 0, (((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 26) + obj_cursor.anim_right), (__view_get( e__VW.YView, 0 ) + 188))

