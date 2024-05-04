var _root_list2, _map2, day, month, year, date, hour, minute, time, _root_list3, _map3, _root_list6, _map6, _root_list, _map, _root_list4, _map4, _root_list5, _map5, _root_list7, _map7, _root_list8, _map8, _wrapper, _root_list_sub1, sub1, mundo, _string;
_root_list2 = ds_list_create()
_map2 = ds_map_create()
ds_list_add(_root_list2, _map2)
ds_list_mark_as_map(_root_list2, (ds_list_size(_root_list2) - 1))
if (current_day < 10)
    day = ("0" + string(current_day))
else
    day = string(current_day)
if (current_month < 10)
    month = ("0" + string(current_month))
else
    month = string(current_month)
if (current_year < 10)
    year = ("0" + string(current_year))
else
    year = string(current_year)
date = ((((day + "/") + month) + "/") + year)
if (current_hour < 10)
    hour = ("0" + string(current_hour))
else
    hour = string(current_hour)
if (current_minute < 10)
    minute = ("0" + string(current_minute))
else
    minute = string(current_minute)
time = ((hour + ":") + minute)
ds_map_add(_map2, "user", global.name_user)
ds_map_add(_map2, "etiqueta1", global.etiqueta1_temp)
ds_map_add(_map2, "etiqueta2", global.etiqueta2_temp)
ds_map_add(_map2, "apariencia", global.apariencia)
ds_map_add(_map2, "entorno", global.bg_level)
ds_map_add(_map2, "cronometro", obj_levelmanager.leveltime)
ds_map_add(_map2, "autoavance", global.autoavance)
ds_map_add(_map2, "modo_noche", global.modo_noche)
ds_map_add(_map2, "ground2", obj_ground2.y)
ds_map_add(_map2, "ground3_x", obj_ground3.x)
ds_map_add(_map2, "ground3_y", obj_ground3.y)
ds_map_add(_map2, "size", room_width)
ds_map_add(_map2, "water_level", obj_card_bout.pos_y)
ds_map_add(_map2, "water_level_limit", obj_card_bout.pos_y_limit)
ds_map_add(_map2, "water_level_speed", global.water_speed)
ds_map_add(_map2, "date", date)
ds_map_add(_map2, "time", time)
ds_map_add(_map2, "condiciones", global.condiciones)
ds_map_add(_map2, "condiciones_type", global.condiciones_type)
ds_map_add(_map2, "condiciones_object", global.condiciones_object)
ds_map_add(_map2, "condiciones_count", global.condiciones_count)
_root_list3 = ds_list_create()
if instance_exists(obj_ground)
{
    with (obj_ground)
    {
        _map3 = ds_map_create()
        ds_list_add(_root_list3, _map3)
        ds_list_mark_as_map(_root_list3, (ds_list_size(_root_list3) - 1))
        ds_map_add(_map3, "x_pos", x)
        ds_map_add(_map3, "y_pos", y)
        ds_map_add(_map3, "index", image_index)
    }
}
_root_list6 = ds_list_create()
if instance_exists(obj_decoracion_parent)
{
    with (obj_decoracion_parent)
    {
        _map6 = ds_map_create()
        ds_list_add(_root_list6, _map6)
        ds_list_mark_as_map(_root_list6, (ds_list_size(_root_list6) - 1))
        ds_map_add(_map6, "object", object_get_name(object_index))
        ds_map_add(_map6, "x_pos", x)
        ds_map_add(_map6, "y_pos", y)
        ds_map_add(_map6, "sprite", sprite_get_name(sprite_index))
        ds_map_add(_map6, "index", image_index)
    }
}
_root_list = ds_list_create()
with (obj_parent_resource)
{
    if ((object_index != obj_tuberia_res) && ((object_index != obj_cannon_res) && ((object_index != obj_cannon_red_res) && ((object_index != obj_semisolid_platform1) && ((object_index != obj_mushroom_platform_res) && ((object_index != obj_vine_res) && ((object_index != obj_pokey_res) && ((object_index != obj_bullebill_base_red_res) && ((object_index != obj_bullebill_base_res) && ((object_index != obj_platform_res) && ((object_index != obj_platform_blue_res) && ((object_index != obj_puente_res) && ((object_index != obj_door_res) && ((object_index != obj_door_exit_res) && ((object_index != obj_door_switch_res) && ((object_index != obj_door_switch_exit_res) && ((object_index != obj_door_lock_res) && ((object_index != obj_door_lock_exit_res) && ((object_index != obj_cinta_res) && ((object_index != obj_cinta_on_res) && (object_index != obj_ground)))))))))))))))))))))
    {
        _map = ds_map_create()
        ds_list_add(_root_list, _map)
        ds_list_mark_as_map(_root_list, (ds_list_size(_root_list) - 1))
        ds_map_add(_map, "object", object_get_name(object_index))
        ds_map_add(_map, "x_pos", x)
        ds_map_add(_map, "y_pos", y)
        ds_map_add(_map, "sprout", sprout)
        ds_map_add(_map, "progresivo", progresivo)
        ds_map_add(_map, "wings", wings)
        ds_map_add(_map, "rotacion", rotacion)
        ds_map_add(_map, "direct_t", direct_t)
        ds_map_add(_map, "paracaidas", paracaidas)
        ds_map_add(_map, "key", key)
        ds_map_add(_map, "inup", inup)
        ds_map_add(_map, "modo_water", modo_water)
        ds_map_add(_map, "s_scaley", s_scaley)
    }
}
_root_list4 = ds_list_create()
with (obj_parent_resource)
{
    if (object_index == obj_tuberia_res)
    {
        _map4 = ds_map_create()
        ds_list_add(_root_list4, _map4)
        ds_list_mark_as_map(_root_list4, (ds_list_size(_root_list4) - 1))
        ds_map_add(_map4, "x_pos", x)
        ds_map_add(_map4, "y_pos", y)
        ds_map_add(_map4, "size", size)
        ds_map_add(_map4, "rotacion", rotacion)
        ds_map_add(_map4, "direct_t", direct_t)
        ds_map_add(_map4, "sprite", sprite_get_name(sprite_index))
        ds_map_add(_map4, "scalex", s_scalex)
        ds_map_add(_map4, "color", color)
        ds_map_add(_map4, "mask", sprite_get_name(mask_index))
    }
}
_root_list5 = ds_list_create()
with (obj_parent_resource)
{
    if ((object_index == obj_cannon_res) || (object_index == obj_cannon_red_res))
    {
        _map5 = ds_map_create()
        ds_list_add(_root_list5, _map5)
        ds_list_mark_as_map(_root_list5, (ds_list_size(_root_list5) - 1))
        ds_map_add(_map5, "object", object_get_name(object_index))
        ds_map_add(_map5, "x_pos", x)
        ds_map_add(_map5, "y_pos", y)
        ds_map_add(_map5, "direct", direct)
        ds_map_add(_map5, "down", d)
        ds_map_add(_map5, "up", u)
        ds_map_add(_map5, "left", l)
        ds_map_add(_map5, "right", r)
    }
}
_root_list7 = ds_list_create()
with (obj_parent_resource)
{
    if ((object_index == obj_semisolid_platform1) || ((object_index == obj_mushroom_platform_res) || ((object_index == obj_vine_res) || ((object_index == obj_platform_res) || ((object_index == obj_platform_blue_res) || ((object_index == obj_puente_res) || ((object_index == obj_pokey_res) || ((object_index == obj_bullebill_base_red_res) || ((object_index == obj_bullebill_base_res) || ((object_index == obj_cinta_res) || (object_index == obj_cinta_on_res)))))))))))
    {
        _map7 = ds_map_create()
        ds_list_add(_root_list7, _map7)
        ds_list_mark_as_map(_root_list7, (ds_list_size(_root_list7) - 1))
        ds_map_add(_map7, "object", object_get_name(object_index))
        ds_map_add(_map7, "x_pos", x)
        ds_map_add(_map7, "y_pos", y)
        ds_map_add(_map7, "sprite", sprite_get_name(sprite_index))
        ds_map_add(_map7, "color", color)
        ds_map_add(_map7, "depth", depth)
        ds_map_add(_map7, "width", size_x)
        ds_map_add(_map7, "height", size_y)
        ds_map_add(_map7, "direct_t", direct_t)
        ds_map_add(_map7, "wings", wings)
    }
}
_root_list8 = ds_list_create()
with (obj_parent_resource)
{
    if ((object_index == obj_door_res) || ((object_index == obj_door_switch_res) || (object_index == obj_door_lock_res)))
    {
        _map8 = ds_map_create()
        ds_list_add(_root_list8, _map8)
        ds_list_mark_as_map(_root_list8, (ds_list_size(_root_list8) - 1))
        ds_map_add(_map8, "object", object_get_name(object_index))
        ds_map_add(_map8, "x_pos", x)
        ds_map_add(_map8, "y_pos", y)
        ds_map_add(_map8, "door_x", door_x)
        ds_map_add(_map8, "door_y", door_y)
    }
}
_wrapper = ds_map_create()
ds_map_add_list(_wrapper, "AJUSTES", _root_list2)
ds_map_add_list(_wrapper, "SUELO", _root_list3)
ds_map_add_list(_wrapper, "DECORACION", _root_list6)
ds_map_add_list(_wrapper, "NIVEL", _root_list)
ds_map_add_list(_wrapper, "TUBERIAS", _root_list4)
ds_map_add_list(_wrapper, "CANNON", _root_list5)
ds_map_add_list(_wrapper, "PLATAFORMAS", _root_list7)
ds_map_add_list(_wrapper, "PUERTAS", _root_list8)
_root_list_sub1 = ds_list_create()
sub1 = ds_map_create()
ds_map_add_list(sub1, "AJUSTES", _root_list_sub1)
mundo = ds_map_create()
ds_map_add_map(mundo, "MAIN", _wrapper)
ds_map_add_map(mundo, "SUB1", sub1)
_string = json_encode(mundo)
SaveStringToFile(global.save_changes, _string)
ds_map_destroy(_wrapper)
with (obj_load_image)
    instance_destroy()
with (obj_toast)
    instance_destroy()
with (instance_create((__view_get( e__VW.XView, 0 ) + 134), (__view_get( e__VW.YView, 0 ) + 216), obj_toast))
    image_index = 0
global.instance_deactivate = 1
obj_editormanager.expand_open = 0
if instance_exists(obj_panel_save_load)
{
    with (obj_panel_save_load)
        event_user(0)
}
if instance_exists(obj_robot)
{
    with (obj_robot)
    {
        active = 0
        canpress = 0
    }
}

