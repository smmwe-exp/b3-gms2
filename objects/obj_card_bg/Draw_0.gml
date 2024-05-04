if (active == 0)
    draw_sprite(spr_card_background, 0, ((__view_get( e__VW.XView, 0 ) + 6) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 65))
draw_sprite_ext(sprite_index, image_index, ((__view_get( e__VW.XView, 0 ) + 7) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 66), 1, 1, 0, c_white, 1)
if (effect_hover == 1)
    draw_sprite(spr_bgs_hover, 0, ((__view_get( e__VW.XView, 0 ) + 6) - obj_cursor.anim_left), (__view_get( e__VW.YView, 0 ) + 65))

