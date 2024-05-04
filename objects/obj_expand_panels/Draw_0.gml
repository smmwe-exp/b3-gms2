var zoom;
if (instance_exists(obj_editormanager) && (obj_editormanager.zoom == 2))
    zoom = 200
else
    zoom = 100
draw_sprite_ext(sprite_index, image_index, (((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )) - 38) + obj_cursor.anim_right), (__view_get( e__VW.YView, 0 ) + zoom), 1, 1, 0, c_white, 1)

