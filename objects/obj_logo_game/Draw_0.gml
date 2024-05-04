if (active == 0)
    draw_sprite(spr_cartels_bg, 0, ((__view_get( e__VW.XView, 0 ) + 6) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 41))
draw_sprite_ext(sprite_index, image_index, ((__view_get( e__VW.XView, 0 ) + 6) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 41), 1, 1, 0, c_white, 1)
if (effect_hover == 1)
    draw_sprite(spr_panel_left_hover, 0, ((__view_get( e__VW.XView, 0 ) + 6) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 41))

