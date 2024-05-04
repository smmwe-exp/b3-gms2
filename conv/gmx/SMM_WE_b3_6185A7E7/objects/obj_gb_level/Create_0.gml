var mundos, _wrapper, _list, _map;
stamps = 2366
etiquetas_g = 2362
instance_create((__view_get( e__VW.XView, 0 ) + 196), (__view_get( e__VW.YView, 0 ) + 182), obj_bt_gb_play)
instance_create((__view_get( e__VW.XView, 0 ) + 283), (__view_get( e__VW.YView, 0 ) + 146), obj_bt_gb_delete)
instance_create((__view_get( e__VW.XView, 0 ) + 317), (__view_get( e__VW.YView, 0 ) + 56), obj_bt_gb_close)
if file_exists((global.directorio + global.levelguardabot))
{
    mundos = LoadJSONFromFile((global.directorio + global.levelguardabot))
    _wrapper = ds_map_find_value(mundos, "MAIN")
    _list = ds_map_find_value(_wrapper, "AJUSTES")
    _map = ds_list_find_value(_list, 0)
    global.apariencia = ds_map_find_value(_map, "apariencia")
    global.etiqueta1_temp = ds_map_find_value(_map, "etiqueta1")
    global.etiqueta2_temp = ds_map_find_value(_map, "etiqueta2")
    user = ds_map_find_value(_map, "user")
    fecha = ds_map_find_value(_map, "date")
    hora = ds_map_find_value(_map, "time")
    entorno = ds_map_find_value(_map, "entorno")
    if (entorno == "ground")
        entorno_image = 0
    else if (entorno == "underground")
        entorno_image = 1
    else if (entorno == "underwater")
        entorno_image = 2
    else if (entorno == "desert")
        entorno_image = 3
    else if (entorno == "snow")
        entorno_image = 4
    else if (entorno == "sky")
        entorno_image = 5
    else if (entorno == "forest")
        entorno_image = 6
    else if (entorno == "ghost")
        entorno_image = 7
    else if (entorno == "airship")
        entorno_image = 8
    else if (entorno == "castle")
        entorno_image = 9
    global.condiciones = ds_map_find_value(_map, "condiciones")
    global.condiciones_type = ds_map_find_value(_map, "condiciones_type")
    global.condiciones_object = ds_map_find_value(_map, "condiciones_object")
    global.condiciones_count = ds_map_find_value(_map, "condiciones_count")
    ds_map_destroy(_wrapper)
}

