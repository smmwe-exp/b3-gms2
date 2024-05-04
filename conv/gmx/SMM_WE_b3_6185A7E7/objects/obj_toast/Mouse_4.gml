if ((room == rm_editor) && (instance_exists(obj_input) && (image_index == 5)))
{
    if (obj_input.texto != "")
    {
        if (borrar != "")
            file_delete(borrar)
        visible = 0
        with (instance_create((__view_get( e__VW.XView, 0 ) + 357), (__view_get( e__VW.YView, 0 ) + 192), obj_load_image))
        {
            pos = 1
            sprite_index = spr_load_image_dark
        }
        with (obj_levelmanager)
            nopause = 1
        instance_activate_all()
        with (obj_button_notification_aceptar)
            alarm[0] = 120
    }
}

