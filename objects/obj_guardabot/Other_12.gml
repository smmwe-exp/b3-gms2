var cont, i, item;
list_post = 3
if (ds_list_size(my_list) > 17)
    cont = 18
else
    cont = ds_list_size(my_list)
for (i = 12; i < cont; i++)
{
    item = instance_create((__view_get( e__VW.XView, 0 ) + 59), (__view_get( e__VW.YView, 0 ) + pos), obj_gb_button)
    item.texto = ds_list_find_value(my_list, i)
    pos += 24
}
if (ds_list_size(my_list) > 17)
{
    with (obj_bt_gb_next)
        image_index = 0
}
else
{
    with (obj_bt_gb_next)
        image_index = 1
}
with (obj_bt_gb_before)
    image_index = 0

