var cont, i, item;
list_post = 2
if (ds_list_size(my_list) > 11)
    cont = 12
else
    cont = ds_list_size(my_list)
for (i = 6; i < cont; i++)
{
    item = instance_create((__view_get( e__VW.XView, 0 ) + 59), (__view_get( e__VW.YView, 0 ) + pos), obj_list_item)
    item.texto = ds_list_find_value(my_list, i)
    pos += 24
}
if (ds_list_size(my_list) > 12)
{
    with (obj_bt_load_next)
        image_index = 0
}
else
{
    with (obj_bt_load_next)
        image_index = 1
}
with (obj_bt_load_before)
    image_index = 0
