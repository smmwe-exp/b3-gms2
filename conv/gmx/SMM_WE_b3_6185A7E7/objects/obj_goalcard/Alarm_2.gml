if (instance_exists(obj_editormanager) && (obj_levelmanager.editor == 0))
{
    with (obj_creator_jugar_editar)
        event_user(2)
}
else if (room == rm_title)
    scr_restart()
else if ((!instance_exists(obj_editormanager)) && (obj_levelmanager.editor == 0))
    instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_superado_bg)

