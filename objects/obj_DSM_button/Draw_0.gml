draw_sprite(spr_DSM_bg_button, 0, __view_get( e__VW.XView, 0 ), ((__view_get( e__VW.YView, 0 ) + 163) + anim))
draw_sprite(sprite_index, image_index, (__view_get( e__VW.XView, 0 ) + 132), ((__view_get( e__VW.YView, 0 ) + 182) + anim))
if (effect_hover == 1)
    draw_sprite(spr_button_pausa_select, 0, x, y)
draw_sprite(spr_DSM_cortina_left_right, 0, (__view_get( e__VW.XView, 0 ) - anim), __view_get( e__VW.YView, 0 ))
draw_sprite(spr_DSM_cortina_left_right, 1, ((__view_get( e__VW.XView, 0 ) + 340) + anim), __view_get( e__VW.YView, 0 ))
draw_sprite(spr_DSM_cortina_up, 0, __view_get( e__VW.XView, 0 ), (__view_get( e__VW.YView, 0 ) - anim))

