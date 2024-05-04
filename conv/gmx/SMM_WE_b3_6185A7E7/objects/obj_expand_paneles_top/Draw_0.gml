var zoom;
if (instance_exists(obj_editormanager) && (obj_editormanager.zoom == 2))
    zoom = 362
else
    zoom = 181
draw_sprite_ext(sprite_index, image_index, (__view_get( e__VW.XView, 0 ) + zoom), ((__view_get( e__VW.YView, 0 ) + 34) - obj_cursor.anim_top), 1, 1, 0, c_white, 1)

