draw_sprite_ext(sprite_index, image_index, ((__view_get( e__VW.XView, 0 ) + 6) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 109), 1, 1, 0, c_white, 1)
if (active == 1)
    draw_set_font(global.time_digits_white)
else
    draw_set_font(global.time_digits)
draw_text(((__view_get( e__VW.XView, 0 ) + 24) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 116), string_hash_to_newline(string_add_zeros(obj_levelmanager.leveltime, 3)))
if (effect_hover == 1)
    draw_sprite(spr_panel_left_hover, 0, ((__view_get( e__VW.XView, 0 ) + 6) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 109))

