var mundos, _wrapper, _list, _map, _list2, j, _map2, o_ground, _list3, k, _map3, object, o_objecto, _list4, l, _map4, _list5, _map5, sprite, _list6, _map6, _list7, _map7, _list8, _map8;
if (global.levelguardabot != "")
{
    if file_exists((global.directorio + global.levelguardabot))
    {
        global.save_changes = (global.directorio + global.levelguardabot)
        global.last_level = global.levelguardabot
        mundos = LoadJSONFromFile((global.directorio + global.levelguardabot))
        _wrapper = ds_map_find_value(mundos, "MAIN")
        _list = ds_map_find_value(_wrapper, "AJUSTES")
        _map = ds_list_find_value(_list, 0)
        global.apariencia = ds_map_find_value(_map, "apariencia")
        global.bg_level = ds_map_find_value(_map, "entorno")
        global.modo_noche = ds_map_find_value(_map, "modo_noche")
        if instance_exists(obj_levelmanager)
            obj_levelmanager.leveltime = ds_map_find_value(_map, "cronometro")
        global.autoavance = ds_map_find_value(_map, "autoavance")
        if instance_exists(obj_ground2)
            obj_ground2.y = ds_map_find_value(_map, "ground2")
        if instance_exists(obj_ground3)
        {
            obj_ground3.x = ds_map_find_value(_map, "ground3_x")
            obj_ground3.y = ds_map_find_value(_map, "ground3_y")
        }
        room_width = ds_map_find_value(_map, "size")
        if instance_exists(obj_card_bout)
        {
            obj_card_bout.pos_y = ds_map_find_value(_map, "water_level")
            obj_card_bout.pos_y_limit = ds_map_find_value(_map, "water_level_limit")
            global.water_speed = ds_map_find_value(_map, "water_level_speed")
        }
        global.etiqueta1_temp = ds_map_find_value(_map, "etiqueta1")
        global.etiqueta2_temp = ds_map_find_value(_map, "etiqueta2")
        global.condiciones = ds_map_find_value(_map, "condiciones")
        global.condiciones_type = ds_map_find_value(_map, "condiciones_type")
        global.condiciones_object = ds_map_find_value(_map, "condiciones_object")
        global.condiciones_count = ds_map_find_value(_map, "condiciones_count")
        event_user(1)
        event_user(2)
        _list2 = ds_map_find_value(_wrapper, "SUELO")
        for (j = 0; j < ds_list_size(_list2); j++)
        {
            _map2 = ds_list_find_value(_list2, j)
            o_ground = instance_create(0, 0, obj_ground)
            o_ground.x = ds_map_find_value(_map2, "x_pos")
            o_ground.y = ds_map_find_value(_map2, "y_pos")
            o_ground.x_draw = ds_map_find_value(_map2, "x_pos")
            o_ground.y_draw = ds_map_find_value(_map2, "y_pos")
            o_ground.image_index = ds_map_find_value(_map2, "index")
        }
        _list3 = ds_map_find_value(_wrapper, "NIVEL")
        for (k = 0; k < ds_list_size(_list3); k++)
        {
            _map3 = ds_list_find_value(_list3, k)
            object = asset_get_index(ds_map_find_value(_map3, "object"))
            if ((object != obj_tuberia_res) && ((object != obj_cannon_res) && ((object != obj_cannon_red_res) && ((object != obj_semisolid_platform1) && ((object != obj_mushroom_platform_res) && ((object != obj_vine_res) && ((object != obj_pokey_res) && ((object != obj_bullebill_base_red_res) && ((object != obj_bullebill_base_res) && ((object != obj_platform_res) && ((object != obj_platform_blue_res) && ((object != obj_puente_res) && ((object != obj_door_res) && ((object != obj_door_exit_res) && ((object != obj_door_switch_res) && ((object != obj_door_switch_exit_res) && ((object != obj_door_lock_res) && ((object != obj_door_lock_exit_res) && ((object != obj_cinta_res) && ((object != obj_cinta_on_res) && (object != obj_ground)))))))))))))))))))))
            {
                o_objecto = instance_create(0, 0, object)
                o_objecto.x = ds_map_find_value(_map3, "x_pos")
                o_objecto.y = ds_map_find_value(_map3, "y_pos")
                o_objecto.x_draw = ds_map_find_value(_map3, "x_pos")
                o_objecto.y_draw = ds_map_find_value(_map3, "y_pos")
                o_objecto.sprout = ds_map_find_value(_map3, "sprout")
                o_objecto.direct_t = ds_map_find_value(_map3, "direct_t")
                o_objecto.progresivo = ds_map_find_value(_map3, "progresivo")
                o_objecto.wings = ds_map_find_value(_map3, "wings")
                o_objecto.rotacion = ds_map_find_value(_map3, "rotacion")
                o_objecto.paracaidas = ds_map_find_value(_map3, "paracaidas")
                o_objecto.key = ds_map_find_value(_map3, "key")
                o_objecto.inup = ds_map_find_value(_map3, "inup")
                o_objecto.modo_water = ds_map_find_value(_map3, "modo_water")
                o_objecto.s_scaley = ds_map_find_value(_map3, "s_scaley")
            }
        }
        _list4 = ds_map_find_value(_wrapper, "TUBERIAS")
        for (l = 0; l < ds_list_size(_list4); l++)
        {
            _map4 = ds_list_find_value(_list4, l)
            o_objecto = instance_create(0, 0, obj_tuberia_res)
            o_objecto.x = ds_map_find_value(_map4, "x_pos")
            o_objecto.y = ds_map_find_value(_map4, "y_pos")
            o_objecto.x_draw = ds_map_find_value(_map4, "x_pos")
            o_objecto.y_draw = ds_map_find_value(_map4, "y_pos")
            o_objecto.size = ds_map_find_value(_map4, "size")
            o_objecto.rotacion = ds_map_find_value(_map4, "rotacion")
            o_objecto.direct_t = ds_map_find_value(_map4, "direct_t")
            o_objecto.sprite_index = asset_get_index(ds_map_find_value(_map4, "sprite"))
            o_objecto.s_scalex = ds_map_find_value(_map4, "scalex")
            o_objecto.color = ds_map_find_value(_map4, "color")
            o_objecto.mask_index = asset_get_index(ds_map_find_value(_map4, "mask"))
        }
        _list5 = ds_map_find_value(_wrapper, "DECORACION")
        for (l = 0; l < ds_list_size(_list5); l++)
        {
            _map5 = ds_list_find_value(_list5, l)
            object = asset_get_index(ds_map_find_value(_map5, "object"))
            sprite = asset_get_index(ds_map_find_value(_map5, "sprite"))
            o_objecto = instance_create(0, 0, object)
            o_objecto.x = ds_map_find_value(_map5, "x_pos")
            o_objecto.y = ds_map_find_value(_map5, "y_pos")
            o_objecto.sprite_index = sprite
            o_objecto.image_index = ds_map_find_value(_map5, "index")
        }
        _list6 = ds_map_find_value(_wrapper, "CANNON")
        for (l = 0; l < ds_list_size(_list6); l++)
        {
            _map6 = ds_list_find_value(_list6, l)
            object = asset_get_index(ds_map_find_value(_map6, "object"))
            o_objecto = instance_create(0, 0, object)
            o_objecto.x = ds_map_find_value(_map6, "x_pos")
            o_objecto.y = ds_map_find_value(_map6, "y_pos")
            o_objecto.x_draw = ds_map_find_value(_map6, "x_pos")
            o_objecto.y_draw = ds_map_find_value(_map6, "y_pos")
            o_objecto.direct = ds_map_find_value(_map6, "direct")
            o_objecto.d = ds_map_find_value(_map6, "down")
            o_objecto.u = ds_map_find_value(_map6, "up")
            o_objecto.l = ds_map_find_value(_map6, "left")
            o_objecto.r = ds_map_find_value(_map6, "right")
        }
        _list7 = ds_map_find_value(_wrapper, "PLATAFORMAS")
        for (l = 0; l < ds_list_size(_list7); l++)
        {
            _map7 = ds_list_find_value(_list7, l)
            object = asset_get_index(ds_map_find_value(_map7, "object"))
            o_objecto = instance_create(0, 0, object)
            o_objecto.x = ds_map_find_value(_map7, "x_pos")
            o_objecto.y = ds_map_find_value(_map7, "y_pos")
            o_objecto.x_draw = ds_map_find_value(_map7, "x_pos")
            o_objecto.y_draw = ds_map_find_value(_map7, "y_pos")
            o_objecto.size_x = ds_map_find_value(_map7, "width")
            o_objecto.size_y = ds_map_find_value(_map7, "height")
            o_objecto.sprite_index = asset_get_index(ds_map_find_value(_map7, "sprite"))
            o_objecto.color = ds_map_find_value(_map7, "color")
            o_objecto.depth = ds_map_find_value(_map7, "depth")
            o_objecto.direct_t = ds_map_find_value(_map7, "direct_t")
            o_objecto.wings = ds_map_find_value(_map7, "wings")
        }
        _list8 = ds_map_find_value(_wrapper, "PUERTAS")
        for (l = 0; l < ds_list_size(_list8); l++)
        {
            _map8 = ds_list_find_value(_list8, l)
            object = asset_get_index(ds_map_find_value(_map8, "object"))
            o_objecto = instance_create(0, 0, object)
            o_objecto.x = ds_map_find_value(_map8, "x_pos")
            o_objecto.y = ds_map_find_value(_map8, "y_pos")
            o_objecto.x_draw = ds_map_find_value(_map8, "x_pos")
            o_objecto.y_draw = ds_map_find_value(_map8, "y_pos")
            o_objecto.door_x = ds_map_find_value(_map8, "door_x")
            o_objecto.door_y = ds_map_find_value(_map8, "door_y")
        }
        ds_map_destroy(_wrapper)
        instance_destroy()
    }
    else
    {
        event_user(1)
        event_user(2)
        instance_destroy()
    }
}
else
{
    event_user(1)
    event_user(2)
    instance_destroy()
}

