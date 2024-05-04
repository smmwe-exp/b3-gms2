if (global.apariencia == 0)
{
    with (instance_create((x + 8), (y + 9), obj_ventana))
    {
        id_object = other.id
        index_object1 = 96
        index_object2 = 31
        selected_1 = 1
        selected_2 = 0
        s_contorno_1 = other.wings
        s_paracaidas = other.paracaidas
        sprite_index = spr_windows_4
        number = 4
    }
}
else
{
    with (instance_create((x + 8), (y + 9), obj_ventana))
    {
        sprite_index = spr_windows_2
        id_object = other.id
        s_contorno_1 = other.wings
        s_paracaidas = other.paracaidas
        number = 2
    }
}

