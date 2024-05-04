if (instance_exists(obj_levelmanager) && (obj_levelmanager.editor == 1))
    global.resource_create = 0
if (instance_exists(obj_water_move) && (obj_water_move.drag == 1))
{
    with (obj_water_move)
    {
        drag = 0
        global.resource_block = 0
        global.cursor = 0
        with (obj_cursor)
            event_user(0)
    }
}
if (instance_exists(obj_water_move_limit) && (obj_water_move_limit.drag == 1))
{
    with (obj_water_move_limit)
    {
        drag = 0
        global.resource_block = 0
        global.cursor = 0
        with (obj_cursor)
            event_user(0)
    }
}

