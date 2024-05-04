if (instance_exists(obj_editormanager) && (obj_editormanager.zoom == 2))
{
    sprite_index = spr_expand_panels_top_big
    x = (__view_get( e__VW.XView, 0 ) + 362)
}
else
{
    sprite_index = spr_expand_panels_top
    x = (__view_get( e__VW.XView, 0 ) + 181)
}
y = ((__view_get( e__VW.YView, 0 ) + 34) - obj_cursor.anim_top)

