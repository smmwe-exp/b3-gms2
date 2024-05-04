x = (((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 38) + obj_cursor.anim_right)
if (instance_exists(obj_editormanager) && (obj_editormanager.zoom == 2))
{
    sprite_index = spr_expand_panels_big
    y = (__view_get( e__VW.YView, 0 ) + 200)
}
else
{
    sprite_index = spr_expand_panels
    y = (__view_get( e__VW.YView, 0 ) + 100)
}

