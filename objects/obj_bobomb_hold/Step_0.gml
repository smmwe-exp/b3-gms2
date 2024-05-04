event_inherited()
if (instance_exists(obj_lava_water) && (((y + 8) >= obj_lava_water.y) && ((global.bg_level == "castle") && (obj_levelmanager.editor == 0))))
{
    instance_create(x, y, obj_explosion)
    instance_destroy()
}

