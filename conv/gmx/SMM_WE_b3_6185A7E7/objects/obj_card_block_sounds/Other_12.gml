if (modo_sonidos == 0)
{
    modo_sonidos = 1
    image_index = 1
    obj_levelmanager.editor_sonidos = 1
    instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_modo_sonidos_control)
    event_user(0)
}
else
{
    modo_sonidos = 0
    image_index = 0
    obj_editormanager.expand_open = 0
    obj_levelmanager.editor_sonidos = 0
    if instance_exists(obj_modo_sonidos_control)
    {
        with (obj_modo_sonidos_control)
            instance_destroy()
    }
    event_user(1)
}

