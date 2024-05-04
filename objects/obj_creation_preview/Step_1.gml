if (instance_exists(obj_cursor) && (obj_cursor.move == 1))
{
    x = (floor(((mouse_x + calculo_x) / 16)) * 16)
    y = (floor(((mouse_y + calculo_y) / 16)) * 16)
}
else
{
    x = (floor((mouse_x / 16)) * 16)
    y = (floor((mouse_y / 16)) * 16)
}
move_snap(16, 16)
if (global.select_resource != 617)
    sprite_index = scr_resources_get_sprite(global.select_resource)
else
    sprite_index = spr_cursor_square
visible = 0
if (place_meeting(x, y, obj_parent_resource) && (obj_levelmanager.editor_sonidos == 0))
    place = 1
else
    place = 0

