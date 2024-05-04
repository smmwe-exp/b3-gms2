x = ((__view_get( e__VW.XView, 0 ) + 54) - obj_cursor.anim_left)
if (instance_exists(obj_editormanager) && (obj_editormanager.zoom == 2))
{
    sprite_index = spr_expand_panels_left_big
    y = (__view_get( e__VW.YView, 0 ) + 200)
}
else
{
    sprite_index = spr_expand_panels_left
    y = (__view_get( e__VW.YView, 0 ) + 100)
}
if (obj_levelmanager.editor == 1)
{
    if (instance_exists(obj_apariencia) || instance_exists(obj_bg_selection))
        visible = 0
    else
        visible = 1
}

