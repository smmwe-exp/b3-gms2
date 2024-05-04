if ((mouse_up == 1) && (global.cursor == 0))
    draw_sprite_ext(spr_grid_selected_16x16, 0, ((__view_get( e__VW.XView, 0 ) + x_start) - 8), ((__view_get( e__VW.YView, 0 ) + y_start) + 16), 1, 1, 0, c_white, 1)
if (anim_gotas != 0)
    draw_sprite_ext(spr_gotas_marioeditor, anim_gotas, (__view_get( e__VW.XView, 0 ) + x_start), ((__view_get( e__VW.YView, 0 ) + y_start) + 16), s_scalex, s_scaley, 0, c_white, 0.5)
if (drag_draw == 1)
    draw_sprite_ext(sprite_index, image_index, (__view_get( e__VW.XView, 0 ) + x_start), (__view_get( e__VW.YView, 0 ) + y_start), s_scalex, s_scaley, 0, c_white, image_alpha)
else
    draw_sprite_ext(sprite_index, image_index, x, y, s_scalex, s_scaley, 0, c_white, image_alpha)
if ((mouse_up == 1) && ((drag == 0) && ((global.cursor == 2) && (follow == 0))))
    draw_sprite_ext(spr_grid_selected_16x16, 0, ((__view_get( e__VW.XView, 0 ) + x_start) - 8), ((__view_get( e__VW.YView, 0 ) + y_start) + 16), 1, 1, 0, c_white, 1)

