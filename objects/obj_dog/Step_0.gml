x = (__view_get( e__VW.XView, 0 ) + 358)
y = (__view_get( e__VW.YView, 0 ) + 155)
if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_cursor, 0, 0)
    image_index = 1
else
    image_index = 0

