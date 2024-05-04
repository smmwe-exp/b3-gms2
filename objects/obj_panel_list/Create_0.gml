image_speed = 0
image_index = global.idioma
if instance_exists(obj_menu_editor)
{
    with (obj_menu_editor)
        can_press = 0
}
if instance_exists(obj_expand)
{
    with (obj_expand)
        can_press = 0
}
pos = 47
list_post = 1
my_list = ds_list_create()
for (fname = file_find_first((global.directorio + "*.swe"), 0); fname != ""; fname = file_find_next())
    ds_list_add(my_list, fname)
event_user(0)
with (instance_create((__view_get( e__VW.XView, 0 ) + 357), (__view_get( e__VW.YView, 0 ) + 11), obj_button_notification_cancelar))
    sprite_index = spr_button_close
if (ds_list_size(my_list) < 6)
{
    with (instance_create((__view_get( e__VW.XView, 0 ) + 335), (__view_get( e__VW.YView, 0 ) + 93), obj_bt_load_next))
    {
        image_speed = 0
        image_index = 1
    }
}
else
    instance_create((__view_get( e__VW.XView, 0 ) + 335), (__view_get( e__VW.YView, 0 ) + 93), obj_bt_load_next)
with (instance_create((__view_get( e__VW.XView, 0 ) + 20), (__view_get( e__VW.YView, 0 ) + 93), obj_bt_load_before))
{
    image_speed = 0
    image_index = 1
}

