draw_sprite_ext(sprite_index, image_index, ((__view_get( e__VW.XView, 0 ) + 6) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 133), 1, 1, 0, c_white, 1)
if (global.condiciones == 1)
    draw_sprite(spr_icons_condiciones_acciones_small, (global.condiciones_count == 0), ((__view_get( e__VW.XView, 0 ) + 27) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 135))
if (effect_hover == 1)
    draw_sprite(spr_panel_left_hover, 0, ((__view_get( e__VW.XView, 0 ) + 6) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 133))

