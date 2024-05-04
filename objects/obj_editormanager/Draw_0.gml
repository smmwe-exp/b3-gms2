if (zoom == 2)
    valor_1 = 698
else
    valor_1 = 349
if instance_exists(obj_erase)
{
    if ((obj_erase.active == 1) && (zoom == 0))
        draw_sprite(spr_bg_goma_de_borrar, anim_goma, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
}
draw_sprite_ext(spr_panel_right, 0, (((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 35) + obj_cursor.anim_right), __view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, 1)
draw_sprite_ext(spr_banner, 0, __view_get( e__VW.XView, 0 ), (__view_get( e__VW.YView, 0 ) - obj_cursor.anim_top), 1, 1, 0, c_white, 1)
draw_sprite(spr_dog, 0, (((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 26) + obj_cursor.anim_right), (__view_get( e__VW.YView, 0 ) + 155))
draw_sprite(spr_button_scroll, 0, (((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 72) + (obj_cursor.anim_right * 2)), ((__view_get( e__VW.YView, 0 ) + 192) + obj_cursor.anim_bottom))
if (instance_exists(obj_erase) && ((obj_erase.active == 1) && (zoom == 0)))
{
    if (global.idioma == 0)
        draw_sprite(spr_minitabs, 3, ((__view_get( e__VW.XView, 0 ) + 60) - obj_cursor.anim_left), ((__view_get( e__VW.YView, 0 ) + 34) - obj_cursor.anim_top))
    else if (global.idioma == 1)
        draw_sprite(spr_minitabs_english, 3, ((__view_get( e__VW.XView, 0 ) + 60) - obj_cursor.anim_left), ((__view_get( e__VW.YView, 0 ) + 34) - obj_cursor.anim_top))
}

