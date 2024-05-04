draw_sprite(sprite_index, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ))
if (instance_exists(obj_erase) && (obj_erase.active == 0))
{
    if (global.idioma == 0)
        draw_sprite(spr_minitabs, 0, ((__view_get( e__VW.XView, 0 ) + 60) - obj_cursor.anim_left), ((__view_get( e__VW.YView, 0 ) + 34) - obj_cursor.anim_top))
    else if (global.idioma == 1)
        draw_sprite(spr_minitabs_english, 0, ((__view_get( e__VW.XView, 0 ) + 60) - obj_cursor.anim_left), ((__view_get( e__VW.YView, 0 ) + 34) - obj_cursor.anim_top))
}

