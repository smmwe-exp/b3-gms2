draw_sprite_ext(sprite_index, image_index, (__view_get( e__VW.XView, 0 ) + x_pos), (__view_get( e__VW.YView, 0 ) - obj_cursor.anim_top), 1, 1, 0, c_white, 1)
draw_sprite(sprite_card, obj_draw, (__view_get( e__VW.XView, 0 ) + x_pos), (__view_get( e__VW.YView, 0 ) - obj_cursor.anim_top))
draw_sprite(s_card_top, bg_color, (__view_get( e__VW.XView, 0 ) + x_pos), (__view_get( e__VW.YView, 0 ) - obj_cursor.anim_top))
if (disabled == 1)
    draw_sprite(spr_card_disabled, 0, (__view_get( e__VW.XView, 0 ) + x_pos), (__view_get( e__VW.YView, 0 ) - obj_cursor.anim_top))
if ((effect_hover == 1) && (disabled == 0))
    draw_sprite(spr_card_hover, 0, (__view_get( e__VW.XView, 0 ) + x_pos), (__view_get( e__VW.YView, 0 ) - obj_cursor.anim_top))

